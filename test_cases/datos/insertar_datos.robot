*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem
Resource    ../../resources/setup_test.resource

Suite Setup         SetupTest
Suite Teardown      Disconnect From Database


*** Test Cases ***
Insertar data en tabla persona
    ${output} =  Execute SQL String  INSERT INTO persona VALUES('Yese','Londoño',600)
    log to console  ${output}
    should be equal as strings   ${output}    None

Check If Exists In DB - Victor Florez
   Check If Exists In Database    SELECT * FROM persona WHERE nombre = 'Victor';    