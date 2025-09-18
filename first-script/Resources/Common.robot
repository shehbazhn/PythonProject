*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Variables.robot

*** Keywords ***
Begin Web Test
    Open browser    ${START URL}      ${BROWSER}
    Open Web Test In Full Screen

End Web Test
    Close Browser

Open Web Test In Full Screen
    Set window position    x=0    y=0
    Set window size    width=1920   height=1080

Insert Testing Data
    Log     I am setting up the test data...

Cleanup Testing Data
    Log     I am cleaning up the test data...

Start Test Case
    Log     Starting the test case...