*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary      screenshot_module=PyGTK     screenshot_directory=/home/giuseppe/PycharmProjects/shop/results/videos

*** Variables ***
${url}     https://rahulshettyacademy.com/loginpagePractise/
${browser}     chrome

*** Keywords ***
Open my browser
    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.3 seconds

Close my browser
    Close Browser

Start video
    [Arguments]    ${nameTestCase}
    Start Video Recording    name=${NameTestCase}     embed=True     monitor=2

Stop all video
    Stop All Video Recordings     save_to_disk=False