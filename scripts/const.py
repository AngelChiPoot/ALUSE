import logging

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

logging_format = '%(asctime)s: %(levelname)s: %(message)s'
logging.basicConfig(level=logging.DEBUG, format=logging_format)
logger = logging.getLogger()

# create a file handler
handler = logging.FileHandler('AluseLog.log')
# create a logging format
formatter = logging.Formatter(logging_format)
handler.setFormatter(formatter)
# add the handlers to the logger

logger.addHandler(handler)
