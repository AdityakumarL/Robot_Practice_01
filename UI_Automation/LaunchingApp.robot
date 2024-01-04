*** Settings ***
Library    SeleniumLibrary
Test Setup    Launching Redbus Application
Test Teardown    Close Browser

*** Variables ***

*** Keywords ***
Launching Redbus Application
    Open Browser    https://www.redbus.in/    chrome
    Maximize Browser Window

Verifying Page Title
    Page Should Contain    India's No. 1 Online Bus Ticket Booking Site

*** Test Cases ***
TC_01 Launching Application
    [Documentation]    To verify URL is working or not
    [Tags]    Smoke Test Case
    Verifying Page Title
    Click Element    //span[contains(text(),'Cab Rental')]
