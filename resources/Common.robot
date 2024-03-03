*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary     screenshot_directory=../results/screenshots

*** Variables ***
${url}     https://rahulshettyacademy.com/loginpagePractise/
${browser}     chrome

*** Keywords ***
Open my browser
    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.3 seconds

Start video
    [Arguments]    ${nameTestCase}
    Start Video Recording    name=${NameTestCase}     embed=True     monitor=2

Stop all video
    Stop All Video Recordings    save_to_disk=False