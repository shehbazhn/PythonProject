*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Verify Server Ping
      Create Session    web_api_session    https://localhost:7032    verify=False
      ${response}=    GET On Session    web_api_session    /api/Connectivity/Ping
      Should Be Equal As Integers    ${response.status_code}    200
      Log    ${response.text}