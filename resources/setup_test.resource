| *** Settings ***    |
| Resource            | ../resources/connection_database_local.resource


| *** Variables ***   |
| ${environment}      | 


*** Keywords ***
SetupTest
    Run Keyword IF      '${environment}' == 'local'          Connect to database local