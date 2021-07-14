| *** Settings ***   |
| Resource           | ../resources/connection_database_loca.resource

| *** Variables ***  |
${enviroment}


*** Keywords ***
SetupTest
    Run Keyword IF      '${enviroment}' == 'local'          Connect to database local