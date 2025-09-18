*** Settings ***
Library    String

*** Keywords ***
Convert To Upper
    [Arguments]    ${text}
    ${result}=    Convert To Upper Case    ${text}
    [Return]    ${result}

Convert To Lower
    [Arguments]    ${text}
    ${result}=    Convert To Lower Case    ${text}
    [Return]    ${result}

Replace Substring
    [Arguments]    ${text}    ${search}    ${replace}
    ${result}=    Replace String    ${text}    ${search}    ${replace}
    [Return]    ${result}

Split By Delimiter
    [Arguments]    ${text}    ${delimiter}
    ${result}=    Split String    ${text}    ${delimiter}
    [Return]    ${result}

Strip Whitespace
    [Arguments]    ${text}
    ${result}=    Strip String    ${text}
    [Return]    ${result}

Check String Contains
    [Arguments]    ${text}    ${substring}
    Should Contain    ${text}    ${substring}

Get Substring With Range
    [Arguments]    ${text}    ${start}    ${end}
    ${result}=    Get Substring    ${text}    ${start}    ${end}
    [Return]    ${result}
