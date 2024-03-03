*** Settings ***
Resource    ../pages/Login.robot
<<<<<<< HEAD

*** Keywords ***
=======
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

>>>>>>> 359f650 (Added the test case "Invalid login")
Valid login
    [Arguments]    ${username}     ${password}
    Login.Valid Login     ${username}     ${password}