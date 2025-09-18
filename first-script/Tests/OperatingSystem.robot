*** Settings ***
Documentation    CRM Test Suite with Page Objects
Library    OperatingSystem
Resource         ../Resources/Common.robot
Resource         ../Resources/Company.robot


*** Test Cases ***
Verify Report File Exists
    [Documentation]    Ensure that report file is generated correctly
    ${file_path}=    Set Variable    ${EXECDIR}${/}results${/}report.html
    File Should Exist    ${file_path}

Manage Temp Directory
    ${temp_dir}=    Join Path    ${EXECDIR}    temp_data
    Create Directory    ${temp_dir}
    Directory Should Exist    ${temp_dir}
    Remove Directory    ${temp_dir}

Write And Read Customer Data
    ${file_path}=    Join Path    ${EXECDIR}    customer.txt
    Create File    ${file_path}    CustomerName=Shehbaz\nEmail=shehbaz@gmail.com
    ${content}=    Get File    ${file_path}
    Log To Console    File Content:\n${content}
    Remove File    ${file_path}

Run OS Command
    ${result}=    Run And Return Rc And Output    python --version
    Log To Console    Return Code: ${result[0]}
    Log To Console    Output: ${result[1]}

