*** Settings ***
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/CustomersPage.robot
Resource    ../Resources/PO/AddCustomerPage.robot

*** Keywords ***

Verify Landing Page
    LandingPage.Open Landing Page
    LandingPage.Verify Landing Page Loaded

Login With Valid Credentials
    LandingPage.Click SignIn Link
    LoginPage.Verify Page Loaded
    LoginPage.Enter Login Email
    LoginPage.Enter Login Password
    LoginPage.Click Submit Button
    CustomersPage.Verify Page Loaded

Add New Customer
    CustomersPage.Click New Customer Link
    AddCustomerPage.Verify Page Loaded
    AddCustomerPage.Enter Email
    AddCustomerPage.Enter First Name
    AddCustomerPage.Enter Last Name
    AddCustomerPage.Enter City
    AddCustomerPage.Select State
    AddCustomerPage.Select Gender
    AddCustomerPage.Check Promotional List