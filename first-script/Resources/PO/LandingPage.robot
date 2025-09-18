*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Variables.robot

*** Keywords ***
Open Landing Page
    go to    ${LAND PAGE URL}

Verify Landing Page Loaded
    wait until page contains    Customer Service

Click SignIn Link
    click link    Sign In
