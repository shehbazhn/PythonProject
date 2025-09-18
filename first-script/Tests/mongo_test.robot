*** Settings ***
Resource    ../Resources/Database.robot

*** Test Cases ***
Add Customer Data
    [Documentation]    This is info to add customer data into MongoDB
    Insert Customer Record

#Find Customer Data
    #[Documentation]    This is info to find customer data from MongoDB
    #Find Customer Record
