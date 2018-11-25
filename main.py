from scripts import *
import time
import weka.core.jvm as jvm

#f = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL4.csv']
f = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5.csv']


def main():

    start = time.time()
    #files = initialize_data(SCHEMA, DATA_ROUTE, TABLES, RELATIONS, N_PV, N_AREAS)
    cores, ram = computer_specs()
    selected_attributes, reduced_files = select_att(f, cores, ram)

    end = time.time()
    print("Time taken to run all the processes: ", (end - start)/60, " minutes.")

    return


main()
