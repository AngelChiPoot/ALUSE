import traceback
import weka.core.jvm as jvm
from weka.core.converters import Loader
from weka.attribute_selection import ASSearch
from weka.attribute_selection import ASEvaluation
from weka.attribute_selection import AttributeSelection
from .table_creator import create_reduced_tables
from scripts.const import logger


def cfs(table, cores):
    loader = Loader("weka.core.converters.CSVLoader")
    anneal_data = loader.load_file(table)
    anneal_data.class_is_last()
    logger.info("Running attribute selection for: " + str(table.split("/")[-1]) + ". Please, wait a moment.")
    search = ASSearch(classname="weka.attributeSelection.BestFirst", options=["-D", "0", "-N", "5"])
    evaluation = ASEvaluation(classname="weka.attributeSelection.CfsSubsetEval", options=["-Z", "-P", cores, "-E", cores])
    attsel = AttributeSelection()
    attsel.search(search)
    attsel.evaluator(evaluation)
    attsel.select_attributes(anneal_data)
    logger.info("Selected attributes: " + str(attsel.selected_attributes))
    anneal_data.delete(index=None) # TO-DO: Borrar instancias aun no funciona

    return list(attsel.selected_attributes)


def select_att(files, cores, ram):
    selected_attributes = []
    try:
        jvm.start(max_heap_size=ram+"g")
        for table in files:
            selected_attributes.append(cfs(table, cores))
        reduced_files, att_names = create_reduced_tables(files, selected_attributes)
    except Exception as e:
        logger.error(traceback.format_exc())
        return -1
    finally:
        jvm.stop()
        return reduced_files, att_names
