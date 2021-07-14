*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem
Resource    ../resources/setup_test.resource

Suite Setup         SetupTest
Suite Teardown      Disconnect From Database



*** Variables ***
#

*** Test Cases ***
Insertar data en tabla persona
    ${output}   Execute sql script  insert into persona values('Yese','Londoño',300)
    log to console  ${output}
    should be equals as strings   ${output}    None