import json

CONFIG_ROUTE= './files/config/'
DATA_ROUTE  = '/files/data/'
QUERY_ROUTE = '/files/queries/'
DATABASE    = "planea"
SCHEMA      = ""
N_TABLES    = 0
N_PV        = 0
N_AREAS     = 0
TABLES    = {}
#Size N_TABLES-1, it contains how the main table is related with the others
RELATIONS   = {}
LABELS      = 0


with open(CONFIG_ROUTE + "init.json") as config_file:
    config = json.load(config_file)
SCHEMA      = config['schema']
N_TABLES    = config['n_tables']
N_PV        = config['n_PV']
N_AREAS     = config['n_areas']
LABELS      = config['labels']

relations   = config['relations']
tables      = config['tables']

for i in range(N_TABLES):
    RELATIONS.update({int(i): relations[str(i)]})
    TABLES.update({int(i): tables[str(i)]})
del RELATIONS[0]
