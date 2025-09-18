*** Settings ***
Documentation    XML Test Cases Suit to verify xml data
Resource    ../Resources/XML.robot


*** Test Cases ***
Verify Menu Count
    [Tags]    XML
    should be one menu in the file

Verify Root
    [Tags]    XML
    Verify Menu Name

Verify Food Count
    [Tags]    XML
    Verify Food Count

Verify First Food
    [Tags]    XML
    Verify First Food Name
    Verify First Food Price
    Verify First Food Calories

Add a Food
    [Tags]    XML
    Add New Food

Verify New Food Was Added
    [Tags]    XML
    Verify New Food Exists

