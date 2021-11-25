*** Settings ***
Documentation     Variables and Keywords for testing vaccine haven site.
Library           Selenium2Library

*** Variables ***
${URL}            https://vaccine-haven.herokuapp.com/
${DRIVER_PATH}    {CURDIR}/chromedriver.exe  
${CITIZEN_ID}     9621054547511
${FIRSTNAME}      Nutta
${LASTNAME}       Sittipongpanich
${BIRTHDATE}      21/09/2001
${BIRTHDATE_STR}  2001-09-21
${OCCUPATION}     Student
${PHONE}          0639614493
${ADDRESS}        5/22 Soi Chinnaket 1/23 Ngamwongwaan rd, Laksi, Bangkok 10210

*** Keywords ***
Setup
    Log to console    == Start Testing ==
    Create Webdriver  Chrome  executable_path=${DRIVER_PATH} 

Teardown
    Close All Browsers 
    Log to console    === End Testing ===

Open Homepage
    Go To  ${URL}

Open Registeration page
    Click Element               //*[@id="register__link"]
    Wait Until Location Is      ${URL}registeration

Open Reservation page
    Click Element               //*[@id="reserve__link"]
    Wait Until Location Is      ${URL}reservation

Open My info page
    Click Element               //*[@id="check_info__link"]
    Wait Until Location Is      ${URL}info
    Input Text                  //*[@id="citizen_id"]  ${CITIZEN_ID}
    Click Element               //*[@id="info__btn"]
    Wait Until Page Contains    User information
    Location Should Be          ${URL}info/${CITIZEN_ID}

Input Reservation info
    Input Text                  //*[@id="citizen_id"]  ${CITIZEN_ID}
    Click Element               //*[@id="site_name"]
    Click Element               //*[@id="site_name"]/option[2]
    Click Element               //*[@id="vaccine_name"]
    Click Element               //*[@id="vaccine_name"]/option[1]
    Click Element               //*[@id="vaccine_name"]/option[2]
    Click Element               //*[@id="vaccine_name"]/option[1]
    Click Element               //*[@id="reserve__btn"]