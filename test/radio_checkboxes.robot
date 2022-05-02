*** Settings ***
#Documentation    Suite description

Library    SeleniumLibrary

*** Variables ***
${url}  https://www.facebook.com/
${browser}  Safari

*** Test Cases ***

LoginTest


    #create webdriver    Safari
    open browser    ${url}   ${browser}
    LoginIntoApplication
    #open browser    ${url}   ${browser}
    #close browser

*** Keywords ***
LoginIntoApplication
    Maximize Browser Window
    click element  xpath://a[text()='Create New Account']
    #close all browsers


#    switch window  MAIN
#    Press Keys  xpath://input[@id='u_j_5_7v'] RETURN
#    sleep 5s
#    Select Frame	xpath://div[@id='ContentModel']//iframe
#    handle alert accept
#     handle alert dismiss
#     handle alert leave
#     select frame  <xpath/id/name>
#     unselect frame
#     alert should be present  Sign Up
#    switch browser  2
#    Switch Window  title:Sign Up
#    select radio button    xpath://input[@id='u_j_5_7v']  Male
#    sleep 10s
#     select from list by label
#     select from list by index
#     select from list by value
     # Every step delay with 3 seconds since we used set selenium speed method
#     set selenium speed  3 seconds
     # if you want to check what is default selenium time use below command
#     ${speed}=  Get Selenium Speed
#
#     log to console  ${speed}

#     ${set_speed}=  Set Selenium Speed  3 seconds
#
#     log to console  ${set_speed}
#
#     close browser
#      set selenium timeout  10 seconds
#
#      wait until page contains  Sign Ups
       # Implicit wait statement
      set selenium implicit wait  10 seconds
      close browser



