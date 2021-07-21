*** Settings ***
Library         OperatingSystem
Library         DatabaseLibrary
Resource        ../../resources/setup_test.resource

Suite Setup       SetupTest
Suite Teardown    Disconnect From Database
 

 
*** Test Cases ***
Validar que existe la tabla persona
    Table Must Exist    persona