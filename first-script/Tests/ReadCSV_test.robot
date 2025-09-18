*** Settings ***
Resource    ../Data/InputData.robot
Resource    ../Resources/DataManager.robot


*** Test Cases ***
Should see correct error messages with invalid logins
    ${InvalidLoginScenarios} =  Get CSV Data    ${INVALID_CREDENTIALS_PATH_CSV}