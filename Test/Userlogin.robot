*** Settings ***
Documentation  Eventhive VX event page user login
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User login in EventHive event page
    [Documentation]  Eventhive VX event page user login
    [Tags]  Smoke
    Open Browser  https://staging.vx.eventhive.com/demo-event/login firefox
    maximize browser
#   Wait Until Page Contains  Login
#   Input Text  id=email  super@eventhive.live
#   Input Password  id=password  password
#   Close Browser

*** Keywords ***
