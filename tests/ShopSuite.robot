*** Settings ***
Resource    ../resources/ShopApp.robot
Test Setup    Open My Browser
Test Teardown    Close My Browser

*** Variables ***
${username}     rahulshettyacademy
${password}     learning


*** Test Cases ***
Valid credentials login
    [Documentation]    Valid Login
    [Tags]    validLogin
    Start Video    name="Valid credentials login"
    ShopApp.Valid Login    ${username}     ${password}
    Stop All Video