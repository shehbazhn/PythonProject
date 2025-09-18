*** Settings ***
Test Template    Verify User

*** Variables ***
&{USERS1}    name=Shehbaz    role=Admin
&{USERS2}    name=Ali        role=User
&{USERS3}    name=Ayesha     role=Guest

*** Test Cases ***
Check Admin User     ${USERS1}
Check Normal User    ${USERS2}
Check Guest User     ${USERS3}

*** Keywords ***
Verify User
    [Arguments]    ${USER}
    Log    Name: ${USER}[name]
    Log    Role: ${USER}[role]
    Run Keyword If    '${USER}[role]' == 'Admin'    Log    ✅ This is an Admin
    ...    ELSE    Log    ℹ️ Not an Admin
