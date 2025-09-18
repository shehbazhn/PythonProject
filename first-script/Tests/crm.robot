*** Settings ***
Documentation    CRM Test Suite with Page Objects
Resource         ../Resources/Common.robot
Resource         ../Resources/Company.robot


Suite Setup      Begin Web Test
Test Setup       Insert Testing Data
Test Teardown    Cleanup Testing Data
Suite Teardown   End Web Test

# Run the suite:
# robot -d results Tests/crm.robot
# robot -d results -t "Verify Landing Page" Tests/crm.robot

*** Variables ***
@{MY_VARIABLE} =  Hi  I am shehbaz  How Are You

*** Test Cases ***
Verify Landing Page
    [Documentation]    Verify that landing page loads correctly
    [Tags]    Smoke    Landing
    Company.Verify Landing Page

Login To Application
    [Documentation]    Verify login functionality
    [Tags]    Smoke    Login
    Company.Login With Valid Credentials

Add New Customer
    [Documentation]    Add a new customer after login
    [Tags]    Smoke    Customer
    Company.Add New Customer

Verify List Variables
    Log     ${MY_VARIABLE}
    Log     ${MY_VARIABLE[1]}
