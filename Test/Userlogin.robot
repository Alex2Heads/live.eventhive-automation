*** Settings ***
Documentation  Eventhive VX event page user login
Library  SeleniumLibrary
Test Teardown  Close All Browsers

*** Variables ***
${url}              https://staging.vx.eventhive.com/demo-event/login
${browser}          Chrome
${password}         password!
${username}         username1


*** Keywords ***


*** Test Cases ***
User login in EventHive event page
    [Documentation]  Eventhive VX event page user login
    [Tags]  Smoke
    Open Browser  ${url} ${browser}
    Set Selenium Implicit Wait    5s
    Input Text  id=email
    Input Password  id=password
    Click Element   class:onboarding-form__next-button
    Set Selenium Implicit Wait    15s


*** Test Cases ***
Invalid Login

    Open Browser  https://staging.vx.eventhive.com/demo-event/login Chrome
    Set Selenium Implicit Wait    5s
    Input Text  id=email  ${username}
    Input Password  id=password  ${password}
    Click Element   class:onboarding-form__next-button
    Set Selenium Implicit Wait    20s



Enter Invalid Password
      Input Password  id=password  ${password}
      Log to console  Entered wrong password


Enter Invalid Username
      Input Password  id=email  ${username}
      Log to console  Entered wrong username