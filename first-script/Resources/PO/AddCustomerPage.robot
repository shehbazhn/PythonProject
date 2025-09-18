*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    page should contain    Add Customer

Enter Email
    input text    id=EmailAddress   shehbaz.hussain

Enter First Name
    input text    id=FirstName  shehbaz

Enter Last Name
    input text    id=LastName   Hussain

Enter City
    input text    id=City   Lahore

Select State
    select from list by value    id=StateOrRegion   TX

Select Gender
    select radio button    gender   male

Check promotional list
    select checkbox    name=promos-name

