from scripts import *
import time
import weka.core.jvm as jvm

f = ['/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL5.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL4.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL3.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL2.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL1.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL_mode.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_LYCNVL_randomPV.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_MATNVL5.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_MATNVL4.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_MATNVL3.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_MATNVL2.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_MATNVL1.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_MATNVL_mode.csv', '/home/angel/PycharmProjects/ALUSE/files/data/planea_2015_MATNVL_randomPV.csv']


def main():
    start = time.time()
    #files = initialize_data(SCHEMA, DATA_ROUTE, TABLES, RELATIONS, N_PV, N_AREAS)
    cfs(f)
    end = time.time()
    print("Time taken to run all the processes: ", (end - start)/60, " minutes.")

    return


main()
