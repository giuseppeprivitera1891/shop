*** Settings ***
Resource    ../pages/Login.robot
Resource    ../resources/Common.robot

*** Keywords ***
Start video
    [Arguments]    ${videoName}
    Common.Start video    ${videoName}

Stop video
    Common.Stop all video
    
Invalid login
    [Arguments]    ${username}     ${password}     ${message}
    Login.Invalid Login    ${username}     ${password}     ${message}

Valid login
    [Arguments]    ${username}     ${password}
    Login.Valid Login     ${username}     ${password}