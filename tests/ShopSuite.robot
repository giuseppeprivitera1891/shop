*** Settings ***
Resource    ../resources/ShopApp.robot
Suite Setup    Open My Browser
Suite Teardown    Close My Browser

*** Variables ***
${username}     rahulshettyacademy
${password}     learning
${message}     Incorrect username/password.
${wrongUsername}     username 
${wrongPassword}     password

*** Test Cases ***
Invalid login
    [Documentation]    Invalid login
    [Tags]    invalidLogin   
    ShopApp.Start video     Invalid Login 
    ShopApp.Invalid Login    ${wrongUsername}     ${wrongPassword}      ${message}
    ShopApp.Stop video

Valid credentials login
    [Documentation]    Valid login
    [Tags]    validLogin
    ShopApp.Start video    Valid credentials login
    ShopApp.Valid Login    ${username}     ${password}
    ShopApp.Stop video
