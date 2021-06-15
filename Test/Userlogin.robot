*** Settings ***
Documentation  Eventhive VX event page user login
Library  SeleniumLibrary
Suite Teardown  Close All Browsers


*** Variables ***
${URL}              https://staging.vx.eventhive.com/demo-event/login
${BROWSER}          chrome
${password}         password!   #Invalid Password
${username}         username1
${FAIL}             Fail
${error}            Error


*** Test Cases ***
User login in EventHive event page
    [Documentation]  Eventhive VX event page user login
    [Tags]  Smoke
    Open Browser  ${URL} ${BROWSER}
    Set Selenium Implicit Wait    10s
    Input Text  id=email  guest1.demo@eventhive.dev
    Input Password  id=password  password
    Click Element   class:onboarding-form__next-button
    Wait Until Page Contains  Currently no event scheduled
    Set Selenium Implicit Wait    15s
    Click Element  xpath://*[@id="frame"]/div[1]/div[1]/div[2]/a[3]
    Execute JavaScript  window.scroll(0,500)
    Click Element  class=settings-form__button-logout






*** Test Cases ***
Invalid Login invalid
    Open Browser  ${URL} ${BROWSER}
#    [Arguments] ${password} ${error}
    Set Selenium Implicit Wait    5s
    Input Text  id=email  guest1.demo@eventhive.dev
    Input Password  id=password  ${password}
    Click Element   class:onboarding-form__next-button
    Run Keyword If  '${password}' ==  'FAIL'  Log ${error}
    Set Selenium Implicit Wait    10s


*** Keywords ***
    Run Keyword If  '${password}'  ==  'FAIL'  Log ${error}
