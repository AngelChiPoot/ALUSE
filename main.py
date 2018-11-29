from scripts import *
from flask import Flask, request, jsonify, redirect
import time
import json
import traceback
import os.path


app = Flask(__name__)


def analize():
    ### Initialaze enviroment variables
    with open(CONFIG_ROUTE + "init2.json") as config_file:
        config = json.load(config_file)
    SCHEMA = config['schema']
    N_TABLES = config['ntables']
    N_PV = config['nPV']
    N_AREAS = config['nareas']
    LABELS = config['labels']
    relations = config['relations']
    tables = config['tables']

    for i in range(N_TABLES):
        RELATIONS.update({int(i): relations[str(i)]})
        TABLES.update({int(i): tables[str(i)]})
    del RELATIONS[0]
    #### END

    start = time.time()
    files = initialize_data(SCHEMA, DATA_ROUTE, TABLES, RELATIONS, N_PV, N_AREAS)
    cores, ram = computer_specs()
    reduced_files, att_names = select_att(files, cores, ram)
    create_result_files(att_names, reduced_files, files)
    #create_result_files(an, rf, f)
    create_results_page(SCHEMA)
    delete_originals(TABLES.values(), DATA_ROUTE)
    end = time.time()
    logger.info("Time taken to run all the processes: ", (end - start)/60, " minutes.")

    return


@app.route("/runProcess/", methods=['POST'])
def run_process():
    logger.info("Llegó una petición del tipo RUN_PROCESS a Python: ")
    try:
        if request.method == 'POST':
            logger.info("Iniciando parsing de los datos de entrada.")
            result = request.form
            data = {}
            aux  = {}
            row = 0
            for key, value in result.items():
                if key == "tables":
                    values = value.split(",")
                    for j in values:
                        aux[str(row)] = j
                        row = row + 1
                    data[key] = aux
                    data["ntables"] = len(values)
                    aux = {}
                    row = 0
                else:
                    if key == "relations":
                        values = value.split(",")
                        for j in values:
                            if j == "ALL":
                                aux["0"] = ""
                            else:
                                aux[str(row)] = j
                            row = row + 1
                        data[key] = aux
                        aux = {}
                        row = 0
                    else:
                        data[key] = value
            with open(CONFIG_ROUTE + 'init.json', 'w') as outfile:
                json.dump(data, outfile, indent=4)

            logger.info("Iniciando analis de ALUSE.")
            analize()

        logger.info("Petición de ANALIZAR hacia la API Rest servida.")
        return redirect("http://localhost:8080/aluse/index.php/proceso-completo")
    except Exception as e:
        logger.error(traceback.format_exc())
        return redirect("http://localhost:8080/aluse/index.php/proceso-incompleto")


@app.route('/consultResults/', methods=['POST'])
def consult_results():    
    logger.info("Llegó una petición del tipo CONSULTAR a Python: ")
    try:
        if request.method == 'POST':
            result = request.form
            file = result["name"] + ".html"
            if os.path.exists('./results/' + file):
                logger.info("Se regreso el archivo " + file)
                return redirect("http://localhost:8080/aluse/analize/results/" + file)
            else:
                return redirect("http://localhost:8080/aluse/index.php/no-resultados")

    except Exception as e:
        logger.error(traceback.format_exc())
        return redirect("http://localhost:8080/aluse/index.php/no-resultados")


if __name__ == "__main__":
    app.run(host='localhost', port=5000, debug=True, use_reloader=False)
