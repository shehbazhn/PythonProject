*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Variables.robot

*** Keywords ***
Verify Page Loaded
    page should contain    ${LOGIN PAGE CONTENT}

Enter Login Email
    input text    id=email-id   ${LOGIN EMAIL}

Enter Login Password
    input text    id=password   ${LOGIN PASSWORD}

Click Submit Button
    click button    id=submit-id