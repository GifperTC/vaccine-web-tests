*** Settings ***
Documentation    Test case for register new test citizen.
Library          Selenium2Library
Test Setup       Setup
Test Teardown    Close All Browsers
Resource         resource.robot

*** Test Cases ***
Citizen Registeration test
    Open Registeration page
    Input Text                  //*[@id="citizen_id"]       ${CITIZEN_ID}
    Input Text                  //*[@id="name"]             ${FIRSTNAME}
    Input Text                  //*[@id="surname"]          ${LASTNAME}      
    Input Text                  //*[@id="birth_date"]       ${BIRTHDATE}     
    Input Text                  //*[@id="occupation"]       ${OCCUPATION}    
    Input Text                  //*[@id="phone_number"]     ${PHONE}         
    Input Text                  //*[@id="address"]          ${ADDRESS}       
    Click Element               //*[@id="register__btn"]
    Wait Until Page Contains    Vaccine Haven