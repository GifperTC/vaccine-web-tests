*** Settings ***
Documentation    Test suite for vaccine haven site reservation.
Library          Selenium2Library
Test Setup       Setup
Test Teardown    Close All Browsers
Resource         resource.robot

*** Test Cases ***

Test Visit Homepage
    Open Homepage
    Location Should Be          ${URL}
    Page Should Contain         Vaccine Haven

Test create reservation
    Open Homepage
    Click Element               //*[@id="reserve__link"]
    Wait Until Location Is      ${URL}reservation
    Input Reservation info
    Wait Until Location is      ${URL}

    Open My info page
    Page Should Contain         Pfizer
    Page Should Contain         OGYHSite

Test cancel reservation
    Open Homepage
    Open My info page
    Click Element               //*[@id="cancel__btn"]
    Wait Until Page Contains    Citizen Page

    Wait Until Location is      ${URL}info
    Input Text                  //*[@id="citizen_id"]     ${CITIZEN_ID}
    Click Element               //*[@id="info__btn"]
    Wait Until Page Contains    User information
    Page Should Not Contain     Pfizer
    Page Should Not Contain     OGYHSite