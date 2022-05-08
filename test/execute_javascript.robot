*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test title
    [Tags]    DEBUG
    open browser  https://www.browserstack.com/guide/robot-framework-and-selenium-tutorial  Safari
    maximize browser window
    sleep  3

    execute javascript  window.ScrollTo(0,document.body.scrollHeight)

*** Keywords ***
Provided precondition
#    Setup system under test