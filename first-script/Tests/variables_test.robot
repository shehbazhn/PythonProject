*** Settings ***
Documentation    Variables Test Suite with Page Objects

*** Variables ***
${ENVIRONMENT}    role
${SCALAR_VARIABLE} =  Hellow World
@{LIST_VARIABLE} =  Hi  I am shehbaz  How Are You
&{USER}       name=Shehbaz    role=Admin    age=30

*** Test Cases ***
Verify Scalar Variables
    [Tags]    SCALAR
    Log     ${SCALAR_VARIABLE}

Verify List Variables
    [Tags]    LIST
    Log     ${LIST_VARIABLE}
    Log     ${LIST_VARIABLE[1]}

Verify Dictionary Values
    [Tags]    Dictionary
    Log    Name: ${USER.name}
    Log    Role: ${USER.role}
    Log    Age: ${USER.age}

Verify User Name
    [Tags]    Dictionary
     Log    ${USER}[${ENVIRONMENT}]

Create Dictionary Dynamically
    [Tags]    Dictionary
    &{person}    Create Dictionary    first=Ali    last=Khan    city=Lahore
    Log    First Name: ${person.first}
    Log    City: ${person.city}

Loop Over Dictionary
    [Tags]    Dictionary
    &{fruits}    Create Dictionary    a=Apple    b=Banana    m=Mango
    FOR    ${key}    ${value}    IN    &{fruits}
        Log    ${key} = ${value}
    END

Merge Dictionaries
    [Tags]    Dictionary
    &{dict1}    Create Dictionary    x=10    y=20
    &{dict2}    Create Dictionary    z=30
    &{merged}   Create Dictionary    &{dict1}    &{dict2}
    Log    ${merged}



