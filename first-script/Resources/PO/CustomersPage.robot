*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    page should contain    Our Happy Customers

Click New Customer Link
    click link    id=new-customer