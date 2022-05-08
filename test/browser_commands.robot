*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test title
    [Tags]    DEBUG
    open browser  https://google.com  Safari
    maximize browser window
    sleep  3
    go to  https://yahoo.com
    sleep  3
    go back
    sleep  3
    close browser

