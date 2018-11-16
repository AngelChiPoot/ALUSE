import os
import traceback
import weka.core.jvm as jvm
from weka.core.converters import Loader
from weka.attribute_selection import ASSearch
from weka.attribute_selection import ASEvaluation
from weka.attribute_selection import AttributeSelection


def att(table):
    """
    Just runs some example code.
    """

    # load a dataset
    print("Loading dataset: " + table)
    loader = Loader("weka.core.converters.CSVLoader")
    anneal_data = loader.load_file(table)
    anneal_data.class_is_last()

    # perform attribute selection
    print("Type of data loaded: ", type(anneal_data))
    print("Attribute selection")
    search = ASSearch(classname="weka.attributeSelection.BestFirst", options=["-D", "1", "-N", "5"])
    evaluation = ASEvaluation(classname="weka.attributeSelection.CfsSubsetEval", options=["-P", "1", "-E", "1"])
    attsel = AttributeSelection()
    attsel.search(search)
    attsel.evaluator(evaluation)
    attsel.select_attributes(anneal_data)
    print("# attributes: " + str(attsel.number_attributes_selected))
    print("attributes: " + str(attsel.selected_attributes))
    print("result string:\n" + attsel.results_string)


def cfs(table):
    try:
        jvm.start(max_heap_size="7g")
        att(table)
    except Exception as e:
        print(traceback.format_exc())
    finally:
        jvm.stop()