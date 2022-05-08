*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test title
    [Tags]    DEBUG
    open browser  https://testautomationpractice.blogspot.com/  Safari
    maximize browser window
    sleep  3
    drag and drop  xpath://p[text()='Drag me to my target']   xpath://p[text()='Drop here']
    sleep  3
    close browser


*** Keywords ***
Provided precondition
    Setup system under test