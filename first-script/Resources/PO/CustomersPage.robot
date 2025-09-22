*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    page should contain    Our Happy Customerss

Click New Customer Link
    click link    id=new-customer