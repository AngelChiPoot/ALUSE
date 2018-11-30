import numpy
import json
import pandas as pd
from scripts.const import logger


def substitute_tables(schema, directory, catalogo):
    fields = []
    fields_changed = []
    logger.info("Reading joined tables... ")
    df_cat = pd.read_csv(directory + catalogo + '.csv', encoding='latin1')
    for i in range(len(df_cat.index)):
        if df_cat.iloc[i][0] not in fields:
            fields.append(df_cat.iloc[i][0])

    df_data = pd.read_csv(directory + 'mergedTables.csv', encoding='latin1', usecols=fields)
    logger.info("Merging data meanings...")
    row = 0
    for field in fields:
        # This IF attempts to skip those variables that already are substituted
        if df_cat.iloc[row]["VAL"] == "ALL":
            fields_changed.append(field)
            row = row + 1
        else:
            fields_changed.append(field + "_")
            df_aux = pd.DataFrame(columns=[field, fields_changed[-1]])
            while df_cat.iloc[row]["CAMPO"] == field:
                df_aux.loc[row] = [df_cat.iloc[row]["VAL"], df_cat.iloc[row]["CONTENIDO"]]
                row = row + 1
                if row == df_cat.shape[0]:
                    break
            df_aux[field] = df_aux[field].astype(numpy.int64)
            #Hasta aqui ya tenemos la mini tabla en aux_df
            df_data = pd.merge(df_data, df_aux, on=field, how='inner')
        
    df_data = df_data.loc[:, fields_changed]

    return df_data


def join_tables(tables, relations, directory):
    repited_columns = []
    logger.info("Reading original tables... ")
    df1 = pd.read_csv(directory + tables[0] + '.csv', encoding='latin1')
    del tables[0]
    headers_df1 = df1.columns.values.tolist()

    logger.info("Joining original tables... ")
    for key_table, value_table in tables.items():
        df2 = pd.read_csv(directory + value_table + '.csv', encoding='latin1')
        headers_df2 = df2.columns.values.tolist()
        # This loop check and erase if there are columns with same name in the dataframes
        for i in headers_df1:
            for j in headers_df2:
                if i == j and i not in relations.values():
                    repited_columns.append(i)

        df2 = df2.drop(repited_columns, axis=1)  # this delete the columns with the name of elements in repited_columns
        repited_columns.clear()

        for key_rel, value_rel in relations.items():
            if key_rel == key_table:
                df1 = pd.merge(df1, df2, on=value_rel, how='inner')  # Los campos a analizar son CASE SENSITIVE

    df1.to_csv(directory + "mergedTables.csv", index=False, encoding='latin1')


def create_reduced_tables(tables, selected_attributes):
    row_att_list = 0
    att_names = []
    columns_to_use = []
    reduced_files = []
    for table in tables:
        logger.info("Saving reduced table of: " + str(table[-15:-4]))
        df = pd.read_csv(table, encoding='latin1')
        row_headers = 0
        row_att = 0
        attributes = selected_attributes[row_att_list]
        headers = df.columns.values.tolist()
        for field in headers:
            if row_headers == attributes[row_att]:
                row_att = row_att + 1
                columns_to_use.append(field)
            row_headers = row_headers + 1
        reduced_files.append(table[0:-4] + "_reduced.csv")
        df.to_csv(reduced_files[-1], index=False, columns=columns_to_use, encoding="latin1")
        row_att_list = row_att_list + 1
        att_names.append(columns_to_use)
        columns_to_use = []

    return reduced_files, att_names


def create_results_page(schema):
    logger.info("Creating Webpage with the general results.")
    new_page_name = "./results/" + schema + ".html"
    row = 0
    with open("./results/base.html", "r") as base_page:
        with open(new_page_name, "w") as new_page:
            with open("./results/results.json") as result_file:
                data = json.load(result_file)
                for line in base_page.readlines():
                    if line != "<!--FLAG-->\n":
                        new_page.write(line)
                    else:
                        for i in range(len(data["tables"])):
                            new_page.write('\t\t\t\t\t\t<div class="row">\n')

                            new_page.write('\t\t\t\t\t\t\t<div class="cell" data-title="Tabla">\n')
                            new_page.write('\t\t\t\t\t\t\t\t' + data["fulltables"][i][0:-4] + '\n')
                            new_page.write('\t\t\t\t\t\t\t</div>\n')

                            new_page.write('\t\t\t\t\t\t\t<div class="cell" data-title="N">\n')
                            new_page.write('\t\t\t\t\t\t\t\t' + str(data["Cardinality"][i]) + '\n')
                            new_page.write('\t\t\t\t\t\t\t</div>\n')

                            new_page.write('\t\t\t\t\t\t\t<div class="cell" data-title="Attributos Seleccionados">\n')
                            new_page.write('\t\t\t\t\t\t\t\t<ul>\n')
                            for att in data["SelectedAttributes"][i]:
                                new_page.write('\t\t\t\t\t\t\t\t\t<li>' + att + "</li>\n")
                            new_page.write('\t\t\t\t\t\t\t\t</ul>\n')
                            new_page.write('\t\t\t\t\t\t\t</div>\n')

                            new_page.write('\t\t\t\t\t\t\t<div class="cell" data-title="Descargar">\n')
                            new_page.write('\t\t\t\t\t\t\t\t<a href="http://148.204.66.69/aluse/analize/files/data/' + data["tables"][i] + '" download>\n')
                            new_page.write('\t\t\t\t\t\t\t\t\tDescargar\n')
                            new_page.write('\t\t\t\t\t\t\t\t</a>\n')
                            new_page.write('\t\t\t\t\t\t\t</div>\n')

                            new_page.write('\t\t\t\t\t\t\t<div class="cell" data-title="Descargar">\n')
                            new_page.write('\t\t\t\t\t\t\t\t<a href="http://148.204.66.69/aluse/analize/files/data/' + data["fulltables"][i] + '" download>\n')
                            new_page.write('\t\t\t\t\t\t\t\t\tDescargar\n')
                            new_page.write('\t\t\t\t\t\t\t\t</a>\n')
                            new_page.write('\t\t\t\t\t\t\t</div>\n')

                            new_page.write('\t\t\t\t\t\t</div>\n\n')
