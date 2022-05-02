*** Settings ***
#Documentation    Suite description

Library    SeleniumLibrary

*** Variables ***
${url}  https://www.papertrail.com/
${browser}  Safari

*** Test Cases ***

LoginTest


    #create webdriver    Safari
    open browser    ${url}   ${browser}
    LoginIntoApplication
    close browser

*** Keywords ***
LoginIntoApplication
    Maximize Browser Window
    click element  xpath://a[text()='Log In']
    ${"email_id"}  Set Variable  xpath://input[@name='email']
    sleep  30s
#    message=  Execution paused. Press OK to continue.
#    element should be visible  xpath://input[@name='email']
#    element should be enabled  xpath://input[@name='email']
    element should not be visible  ${"email_id"}
    input text  ${"email_id"}  amitsaxena09.1992@gmail.com
#    input text  xpath://input[@name='email']  amitsaxena09.1992@gmail.com
    input text  xpath://input[@name='password']  bssaxena
    click button  xpath://button[text()='Log in']
    title should be  Papertrail - Log In
    clear element text  ${"email_id"}

