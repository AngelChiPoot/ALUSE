from scripts import *
import time
import json
import traceback


#f = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL4.csv']
#rf = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5_reduced.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL4_reduced.csv']
#an = [['ID_LYC_INSTR', 'ID_SERV_', 'MARGINC_', 'TAM_LOC_SEC_', 'SEXO_', 'EDAD_AC_', 'AB002_', 'AB013_', 'AB049_', 'AB057_', 'AB058_', 'AB059_', 'AB079_', 'RFABNVL_', 'D033_', 'D059_', 'D078_', 'D080_', 'G003_', 'LYCNVL5_'], ['ID_LYC_INSTR', 'ID_SERV_', 'MARGINC_', 'TAM_LOC_SEC_', 'SEXO_', 'EDAD_AC_', 'AB002_', 'AB013_', 'AB049_', 'AB057_', 'AB058_', 'AB059_', 'AB079_', 'RFABNVL_', 'D033_', 'D059_', 'D078_', 'D080_', 'G003_', 'LYCNVL4_']]


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

analize()

"""
from flask import Flask, request, jsonify, redirect

app=Flask(__name__)

@app.route("/runProcess/", methods=['POST'])
def run_process():
    logging.debug("Llegó una petición al API Rest de Python: ", request)
    try:
        if request.method == 'POST':
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
            
            analize()
    
        return redirect("http://localhost:8080/aluse/index.php/proceso-completo") 
    except Exception as e:
        logger.error(traceback.format_exc())
        return redirect("http://localhost:8080/aluse/index.php/proceso-incompleto")
    finally:
        logger.info("Petición de ANALIZAR hacia la API Rest servida.")


@app.route('/consultResults', methods=['GET', 'POST'])
def consult_results():    
    logging.debug("Llegó una petición al API Rest de Python: ", request)
    try:
        if request.method == 'POST':
            result = request.form
            return redirect("http://localhost:8080/aluse/analize/results/" + result["name"] + ".html") 
    except Exception as e:
        logger.error(traceback.format_exc())
        return redirect("http://localhost:8080/aluse/index.php/no-resultados")
    finally:
        logger.info("Petición CONSULTAR hacia la API Rest servida.")


if __name__ == "__main__":
    app.run(host='localhost', port=5000, debug=True, use_reloader=False)

"""