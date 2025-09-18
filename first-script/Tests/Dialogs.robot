*** Settings ***
Documentation    CRM Test Suite with Page Objects
Library    Dialogs
Resource         ../Resources/Common.robot
Resource         ../Resources/Company.robot

Suite Setup      Begin Web Test
Test Setup       Insert Testing Data
Test Teardown    Cleanup Testing Data
Suite Teardown   End Web Test

# Run the suite:
# robot -d results Tests/Dialogs.robot
#  robot -d results -t "Verify Selection From User"  tests/Dialogs.robot
#  robot -d results -t "Verify Value From User"  tests/Dialogs.robot
#  robot -d results -t "Verify Pause Execution"  tests/Dialogs.robot

*** Test Cases ***
Verify Selection From User
    [Documentation]    Verify Selection From User
    [Tags]    Smoke    DropDown
    ${new_browser} =  get selection from user    Which browser?     chrome    ie
    set global variable    ${BROWSER}   ${new_browser}
    Company.Verify Landing Page

Verify Value From User
    [Documentation]    Verify Value From User
    [Tags]    Smoke    Value
    ${username} =  get value from user    Enter Login Email
    ${password} =  get value from user    Enter Login Password
    log to console    Username: ${username}, Password: ${password}

Verify Pause Execution
    [Documentation]    Verify Pause Execution
    [Tags]    Smoke    Pause
    pause execution
    Company.Verify Landing Page