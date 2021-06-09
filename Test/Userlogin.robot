*** Settings ***
Documentation  Eventhive VX event page user login
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User login in EventHive event page
    [Documentation]  Eventhive VX event page user login
    [Tags]  Smoke
    Open Browser  https://staging.vx.eventhive.com/demo-event/login firefox
    Set Selenium Implicit Wait    5s
    Input Text  id=email  
    Input Password  id=password
    Click Element   class:onboarding-form__next-button
    Set Selenium Implicit Wait    15s
    Close Browser

*** Keywords ***
