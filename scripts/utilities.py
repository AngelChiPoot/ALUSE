import csv
import json
import random
import re
import os
import psutil
from scripts.table_creator import substitute_tables
from scripts.table_creator import join_tables


def computer_specs():
    cores = psutil.cpu_count()
    ram   = int((psutil.virtual_memory().available - 500000000) / 1000000000)

    return str(cores), str(ram)


def clean_inconsistencies(bigFile):
    lista = []
    aux = []

    flag = False
    with open(bigFile) as csvfile:
        print("Reading ALUSE file")
        reader = csv.reader(csvfile)
        for row in reader:
            lista.append(row)
        indexes = list(range(1, len(lista)))
        count = 0
        initialSize = len(lista) - 1
        print("Dataset initial Size: ", initialSize, "\nStarting Analysis")
        inc = {}
        toDelete = []
        for i in indexes:
            print("Analyzing row: ", i, ". Found Inconsistences: ", count)
            for j in indexes[i:]:
                if i != j:
                    if lista[i][:-1] == lista[j][:-1] and lista[i][-1] != lista[j][-1]:
                        aux.append(j)
                        if i not in inc.keys():
                            inc.update({i : [j]})
                        else:
                            inc[i].append(j)
                        count += 1
            labels = [lista[i][-1]]
            for k in aux:
                labels.append(lista[k][-1])
            m = take_mode(labels)
            lista[i][-1] = m
            list.si

            for k in aux:
                if k not in toDelete:
                    toDelete.append(k)
            aux = []
        toDelete.sort()
        print(toDelete)
        deleted = []
        offset = 0
        for i in toDelete:
            """print(i, deleted)
            for j in range(len(lista)):
                print(lista[j])"""
            if i not in deleted:
                del lista[i-offset]
            deleted.append(i)
            offset += 1
        finalSize = len(lista) - 1
        print("Final size of Dataset: ", finalSize)

    with open("new"+bigFile, 'w') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(lista)


def substitute_word(keys, vals, route, query_file):
    flag = True
    for key in keys:
        for val in vals:
            print(key, val)
            key = [key]
            if flag:
                f = open(route + query_file + ".sql", 'r')
                message = f.read()
                flag = False
                f.close()
            big_regex = re.compile('|'.join(map(re.escape, key)))
            message = big_regex.sub(val, message)
            vals.remove(val)
            print(message)
            break

    return message


def take_mode(data):
    data.sort()
    aux = {}

    if len(data) > 2:
        ant = data[0]
        cont = 0
        for i in data:
            if ant != i:
                aux.update({ant: cont})
                ant = i
                cont = 1
            else:
                cont += 1
            if i == data[-1]:
                aux.update({ant: cont})
        ant = 0
        m = data[0]
        for key, counter in aux.items():
            if counter > ant:
                m = key
                ant = counter
    else:
        m = data[0]

    return m


def generate_random_PV(bigFile, area, nPV, directory, schema):
    random.seed()
    x = range(1, nPV + 1, 1)
    fields = []
    data = []
    PVnames = []

    for i in range(nPV):
        PVnames.append(area + str(i+1) + "_")

    with open(bigFile, encoding='latin1') as csvfile:
        reader = csv.DictReader(csvfile)
        fields = reader.fieldnames
        data.append(fields)
        #print(PVnames)
        #print(fields)
        for row in reader:
            pv = area + str(random.choice(x)) + "_"
            aux = []
            asigned = False
            for i in fields:
                if i in PVnames:
                    if i == pv and (not asigned):
                        aux.append(row[i])
                        asigned = True
                else:
                    aux.append(row[i])
            data.append(aux)
        del fields[len(fields)-5:]
        fields.append("randomPV")

    to_file = directory + schema + "_" + area + "_randomPV.csv"
    with open(directory + schema + "_" + area + "_randomPV.csv", 'w') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(data)

    return to_file


def generate_moda_PV(bigFile, area, nPV, directory, schema):
    data = []
    PVnames = []

    for i in range(nPV):
        PVnames.append(area + str(i+1) + "_")

    with open(bigFile, encoding='latin1') as csvfile:
        reader = csv.DictReader(csvfile)
        fields = reader.fieldnames
        data.append(fields)
        for row in reader:
            aux = []
            for j in range(nPV):
                aux.append(row[PVnames[j]])
            m = take_mode(aux)
            aux = []
            asigned = False
            for i in fields:
                if i in PVnames:
                    if row[i] == m and (not asigned):
                        aux.append(row[i])
                        asigned = True
                else:
                    aux.append(row[i])
            data.append(aux)
        del fields[len(fields)-5:]
        fields.append("mode")

    to_file = directory + schema + "_" + area + "_mode.csv"
    with open(to_file, 'w', encoding='latin1') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(data)

    return to_file


def obtain_all_tables(schema, directory, catalogo, n_pv, n_areas):
    files_routes = []
    all_files = []
    t1 = substitute_tables(schema, directory, catalogo)
    headers = t1.columns.values.tolist()
    print("Creating tables for each Area using the Mode and the others approaches")
    rIndex = 0
    for i in range(n_areas, 0, -1):
        columns_to_use = headers[ : len(headers)-(n_areas*n_pv)]
        print("Total number of variables: ", len(columns_to_use))
        index = n_pv*i
        for j in range(n_pv, 0, -1):
            columns_to_use.append(headers[-index + j - 1])
        files_routes.append(directory + schema + "_all.csv")
        print("Saving table with all PVs in the area of ", columns_to_use[-1][0:-2])
        t1.to_csv(files_routes[rIndex], index=False, columns=columns_to_use, encoding='latin1')

        columns_to_use = columns_to_use[ : len(columns_to_use) - n_pv]
        for j in range(n_pv, 0, -1):
            columns_to_use.append(headers[-index + j - 1])
            print("Generating RandomColumnPV Table for: ", columns_to_use[-1][0:-1])
            all_files.append(files_routes[rIndex][0:-8] + "_" + columns_to_use[-1][0:-1] + ".csv")
            t1.to_csv(files_routes[rIndex][0:-8] + "_" + columns_to_use[-1][0:-1] + ".csv", index=False, columns=columns_to_use, encoding='latin1')
            if j != 1:
                del columns_to_use[-1]

        print("Generating Mode Table for: ", columns_to_use[-1][0:-2])
        m = generate_moda_PV(files_routes[rIndex], columns_to_use[-1][0:-2], n_pv, directory, schema)
        all_files.append(m)
        print("Generating RandomPV  Table for: ", columns_to_use[-1][0:-2])
        r = generate_random_PV(files_routes[rIndex], columns_to_use[-1][0:-2], n_pv, directory, schema)
        all_files.append(r)
        rIndex = rIndex + 1

    return all_files


def delete_originals(tables, data_route):
    tables.append("catalogo")
    for table in tables:
        file  = "." + data_route + table + ".csv"
        if os.path.exists(file):
            os.remove(file)
        else:
            print("The file does not exist")


def create_result_files(att_names, reduced_files, full_files):
    data = {}
    data["tables"] = []
    data["fulltables"] = []
    data["SelectedAttributes"] = []
    data["Cardinality"] = []
    row = 0
    for att in att_names:
        file = reduced_files[row].split("/")
        data["tables"].append(file[-1])
        file = full_files[row].split("/")
        data["fulltables"].append(file[-1])
        data["SelectedAttributes"].append(att[0:-1])
        data["Cardinality"].append(len(att)-1)
        row = row + 1

    with open('./results/results.json', 'w') as outfile:
        json.dump(data, outfile, indent=4)


def initialize_data(schema, data_directory, tables, relations, n_pv, n_areas):
    join_tables(tables, relations, os.getcwd() + data_directory)
    files = obtain_all_tables(schema, os.getcwd() + data_directory, "catalogo", n_pv, n_areas)
    obtain_all_tables(schema, os.getcwd() + data_directory, "catalogo_min", n_pv, n_areas)
    return files
