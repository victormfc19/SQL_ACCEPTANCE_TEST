from collections import namedtuple
import configparser
import os


def get_variables(environment):
    directory = os.path.dirname(os.path.abspath(__file__))
    DBConfig = namedtuple('DBCONFIG', 'user, pwd')
    configParser = configparser.RawConfigParser()
    configFilePath = os.path.join(directory, 'database.ini')
    configParser.read(configFilePath)

    db_config = {
        "local": DBConfig(configParser.get('LOCAL', 'username'),configParser.get('LOCAL', 'password'))
    }
    return {
        "dbconfig": db_config[environment]
    }
