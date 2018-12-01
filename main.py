from scripts import *
from flask import Flask, request, jsonify, redirect
import time
import json
import traceback
import os.path


app = Flask(__name__)


def analize():
    ### Initialaze enviroment variables
    with open(CONFIG_ROUTE + "init.json") as config_file:
        config = json.load(config_file)
    SCHEMA = config['schema']
    N_TABLES = config['ntables']
    N_PV = config['nPV']
    N_AREAS = config['nareas']
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
    create_results_page(SCHEMA)
    logger.info("Test:Deleting Tables: " + str(list(TABLES.values())))
    delete_originals(list(TABLES.values()), DATA_ROUTE)
    end = time.time()
    logger.info("Time taken to run all the processes: " + str((end - start)/60) + " minutes.")

    return


@app.route("/runProcess/", methods=["GET", "POST"])
def run_process():
    logger.info("A request RUN_PROCESS arrived")
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

            logger.info("ALUSE analysis started.")
            analize()

        return redirect("http://148.204.66.69/aluse/index.php/proceso-completo")
    except Exception as e:
        logger.error(traceback.format_exc())
        return redirect("http://148.204.66.69/aluse/index.php/proceso-incompleto")


@app.route('/consultResults/', methods=["GET", "POST"])
def consult_results():
    logger.info("A request RUN_PROCESS arrived")
    try:
        if request.method == 'POST':
            result = request.form
            file = result["name"] + ".html"
            logger.info("File: " + file)
            if os.path.exists('./results/' + file):
                return redirect("http://148.204.66.69/aluse/analize/results/" + file)
            else:
                return redirect("http://148.204.66.69/aluse/index.php/no-resultados")

    except Exception as e:
        logger.error(traceback.format_exc())
        return redirect("http://148.204.66.69/aluse/index.php/no-resultados")


if __name__ == "__main__":
    app.run(host='10.0.2.15', port=5000, debug=True, use_reloader=False)
