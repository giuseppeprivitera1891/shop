*** Settings ***
Library    SeleniumLibrary     screenshot_root_directory=${imagePath}
Library    ScreenCapLibrary  screenshot_module=PyGTK   screenshot_directory=${videoPath}

*** Variables ***
${url}     https://rahulshettyacademy.com/loginpagePractise/
${browser}     chrome
${imagePath}     /home/giuseppe/PycharmProjects/shop/results/screenshots
${videoPath}     /home/giuseppe/PycharmProjects/shop/results/videos

*** Keywords ***
Open my browser
    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.2 seconds

Close my browser
    Close Browser

Start video
    [Arguments]    ${nameTestCase}
    Start Video Recording    name=${NameTestCase}     embed=True     monitor=1

Stop all video
    Stop All Video Recordings    save_to_disk=False