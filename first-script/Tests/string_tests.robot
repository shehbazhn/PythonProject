*** Settings ***
Documentation    String Library Test Cases
Resource         ../Resources/Strings.robot

*** Test Cases ***
Verify Uppercase Conversion
    # TODO Replace Hello World With Hellow World2
    ${result}=    Convert To Upper    hello world
    Should Be Equal    ${result}    HELLO WORLD

Verify Lowercase Conversion
    ${result}=    Convert To Lower    ROBOT FRAMEWORK
    Should Be Equal    ${result}    robot framework

Verify Substring Replacement
    ${result}=    Replace Substring    I love Java    Java    Python
    Should Be Equal    ${result}    I love Python

Verify String Split
    ${result}=    Split By Delimiter    apple,banana,grape    ,
    Length Should Be    ${result}    3
    Should Be Equal    ${result}[0]    apple
    Should Be Equal    ${result}[1]    banana
    Should Be Equal    ${result}[2]    grape

Verify Whitespace Strip
    ${result}=    Strip Whitespace    ${SPACE*3}Robot Framework${SPACE*3}
    Should Be Equal    ${result}    Robot Framework

Verify String Contains Substring
    Check String Contains    Automation with Robot Framework    Robot

Verify Substring Extraction
    ${result}=    Get Substring With Range    Automation    0    6
    Should Be Equal    ${result}    Automa
