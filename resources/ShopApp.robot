*** Settings ***
Resource    ../pages/Login.robot

*** Keywords ***
Valid login
    [Arguments]    ${username}     ${password}
    Login.Valid Login     ${username}     ${password}