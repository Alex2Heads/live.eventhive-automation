*** Settings ***
Documentation  Eventhive VX user view live stream
Library  SeleniumLibrary
Suite Teardown  Close All Browsers


*** Variables ***
${url}              https://staging.vx.eventhive.com/demo-event/login
${Browser}          headlesschrome






*** Test Cases ***
User login in EventHive View Live Stream Page
    [Documentation]  Eventhive VX user login and view livestream page
    [Tags]  Smoke
    Open Browser  ${url} ${Browser}
    Set Selenium Implicit Wait    10s
    Input Text  id=email  guest1.demo@eventhive.dev
    Input Password  id=password  password
    Click Element   class:onboarding-form__next-button
    Set Selenium Implicit Wait    20s
    Click Element  xpath:/html/body/div[1]/div[1]/div[2]/div/a
    Wait Until Page Contains  There is no stream currently
    Set Selenium Implicit Wait    10s
    Click Element  xpath://*[@id="frame"]/div[1]/div[1]/div[2]/a[3]
    Execute JavaScript  window.scroll(0,500)
    Click Element  class=settings-form__button-logout




*** Keywords ***
Set Environment Variable  webdriver.chrome.driver  /usr/local/bin/chromedriver