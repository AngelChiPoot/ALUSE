from scripts import *
import time
import json
import weka.core.jvm as jvm

#TO-DO: Crear un archivo de log para ver lo que pasa en este modulo cuando se ejecuta en background

f = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL4.csv']
rf = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5_reduced.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL4_reduced.csv']
an = [['ID_LYC_INSTR', 'ID_SERV_', 'MARGINC_', 'TAM_LOC_SEC_', 'SEXO_', 'EDAD_AC_', 'AB002_', 'AB013_', 'AB049_', 'AB057_', 'AB058_', 'AB059_', 'AB079_', 'RFABNVL_', 'D033_', 'D059_', 'D078_', 'D080_', 'G003_', 'LYCNVL5_'], ['ID_LYC_INSTR', 'ID_SERV_', 'MARGINC_', 'TAM_LOC_SEC_', 'SEXO_', 'EDAD_AC_', 'AB002_', 'AB013_', 'AB049_', 'AB057_', 'AB058_', 'AB059_', 'AB079_', 'RFABNVL_', 'D033_', 'D059_', 'D078_', 'D080_', 'G003_', 'LYCNVL4_']]
#f = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5.csv']


def run_processes():

    start = time.time()
    #files = initialize_data(SCHEMA, DATA_ROUTE, TABLES, RELATIONS, N_PV, N_AREAS)
    cores, ram = computer_specs()
    #selected_attributes, reduced_files, att_names = select_att(f, cores, ram)
    #create_result_files(att_names, reduced_files)
    create_result_files(an, rf)
    end = time.time()
    print("Time taken to run all the processes: ", (end - start)/60, " minutes.")

    return

#run_processes()


from flask import Flask, request, jsonify

app=Flask(__name__)

@app.route("/run_process/", methods=['GET', 'POST'])
def run_process():
    """
    with open(CONFIG_ROUTE + 'init.json', 'w') as outfile:
        json.dump(name, outfile, indent=4)

    run_processes()
    """
    if request.method == 'POST':
        result = request.form
        for key, value in result.items():
            print(key, value)

    print("Si llego la peticion a vagrant")
    return jsonify({"response": "Se eliminaron las lineas de:" + result})


@app.route('/data/iso', methods=['GET', 'POST'])
def getDataIsocrona():
    a = request.get_json()

    return jsonify({"response": "Se eliminaron las lineas de:" + a})


if __name__ == "__main__":
    app.run(host='localhost', port=5000, debug=True)

