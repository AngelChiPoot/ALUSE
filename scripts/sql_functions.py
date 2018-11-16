import psycopg2
import json
import sys

from scripts.const import CONFIG_ROUTE

class DatabaseCursor(object):

    def __init__(self, conn_config_file):
        with open(conn_config_file) as config_file:
            self.conn_config = json.load(config_file)

    def __enter__(self):
        self.conn = psycopg2.connect(
            "dbname='" + self.conn_config['dbname'] + "' " +
            "user='" + self.conn_config['user'] + "' " +
            "host='" + self.conn_config['host'] + "' " +
            "password='" + self.conn_config['password'] + "' " +
            "port=" + self.conn_config['port'] + " "
        )
        self.conn.autocommit = False
        self.cur = self.conn.cursor()

        return self.cur

    def __exit__(self, exc_type, exc_val, exc_tb):
        # commit the transaction
        self.conn.commit()
        # close the database communication
        self.conn.close()


def transaction(query):
    with DatabaseCursor(CONFIG_ROUTE + 'config.json') as cur:
        try:
            cur.execute(query)
        except psycopg2.OperationalError as e:
            print('Unable to connect to the Postgres Database!\n{0}').format(e)
            sys.exit(1)

    return 0