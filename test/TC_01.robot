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
    ${"email_id"}=  Set Variable  xpath://input[@name='email']
    input text  xpath://input[@name='email']  amitsaxena09.1992@gmail.com
    input text  xpath://*[@name ='password' ]  bssaxena
    #click button  xpath://button[@name='login']
    title should be  Facebook – log in or sign up

