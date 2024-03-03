*** Settings ***
Resource    ../resources/Common.robot
Variables   ../resources/Locators.py

*** Keywords ***
Valid login
    [Arguments]    ${email}     ${password}
    Input Text       ${inputUsername}     ${email}
    Input Password    ${inputPassword}     ${password}
    Click Element    ${userType}
    Wait Until Element Is Visible    ${okayButtonModal}
    Click Button    ${okayButtonModal}
    Wait Until Element Is Visible    ${termCheckbox}
    Click Element    ${termCheckbox}
    Click Button    ${signInButton}