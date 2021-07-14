*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem
Library    ../resources/configure.py


*** Variables ***
${DBName}       practice01
${DBHost}       localhost
${DBPort}       5432


*** Keywords ***
Connect to database local
    ${lib}=         Get Library Instance    configure
    ${config}=  Call Method   ${lib}     get_variables   local
    ${DBUser}=        Set variable   ${config['dbconfig'].user}
    ${DBPass}=        Set variable   ${config['dbconfig'].pwd}
    ${output}       ${output}    Connect To Database     psycopg2     ${DBName}       ${DBUser}       ${DBPass}       ${DBHost}       ${DBPort}
    log to console  ${output}
    should be equals as string   ${output}    None
    [Return]    ${output}