Library    DatabaseLibrary
Library    OperatingSystem
Resource    ../resources/setup_test.resource

Suite Setup         SetupTest
Suite Teardown      Disconnect From Databas


*** Test Cases ***

Validar que existe la tabla persona
     Table Must Exist    persona