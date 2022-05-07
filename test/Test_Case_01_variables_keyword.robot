*** Settings ***
Library  SeleniumLibrary
Resource  ../src/google_keyword.robot

*** Variables ***
# Scaler Variables
${youtube_url}  https://www.youtube.com/watch?v=ErTN5rE6t8s
${google_url}  https://www.google.com/
${browser}  Safari

*** Test Cases ***
#Youtube
#    [Tags]    DEBUG
    # launching browser
    #Launch Brower and enter url and closer Browser
Google
    Launch Brower and enter google url and closer Browser



*** Keywords ***
Launch Brower and enter url and closer Browser
    # launching browser
    Open Browser  ${google_url}  ${browser}
    Maximize Browser Window
    sleep  2
    Close Browser

Launch Brower and enter google url and closer Browser
    Open Browser  ${google_url}  ${browser}
    Maximize Browser Window
    sleep  1
#    ${get_all_links}  get_all_links
#    Log to console  ${get_all_links}
#    ${log_titles}  log_title
#    log to console  ${log_titles}
#    ${get_session_id}  get_session_id
#    log to console  ${get_session_id}
    ${get_browser_ids}  get_browser_ids
    log to console  ${get_browser_ids}
    Close Browser
#    input text  ${input_text}  AmitSaxena \
#    ${cokies}  get_cookies
#    Log to console  ${cokies}
#    sleep  1
#    ${get_browser_ids}  get_browser_ids
#    log  ${get_browser_ids}
#    ${get_all_links}    get_all_links
#    Log to console  ${get_all_links}
#    click button  xpath://*[@class='QCzoEc z1asCe MZy1Rb']
#    sleep  1
##    clear element text  ${input_text}
##    ${cokies}  get_cookies
#    Log to console  ${cokies}
#    sleep  1
#    click button  ${click_google_img}
#    sleep  1
#    click image  ${google_click-btn}
#    sleep  2
#    Close Browser

