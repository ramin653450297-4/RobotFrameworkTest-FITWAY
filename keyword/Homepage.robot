*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNUP_SUCCESS_MESSAGE}    สมัครสมาชิกเสร็จสิ้น 
${LOGIN_SUCCESS_MESSAGE}     ยินดีต้อนรับเข้าสู่ระบบ

*** Keywords ***
Open Fit Way Homepage
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window

Verify Signup Success
    Wait Until Page Contains    ${SIGNUP_SUCCESS_MESSAGE}    5s
    Page Should Contain         ${SIGNUP_SUCCESS_MESSAGE}

Verify Login Success
    Wait Until Page Contains    ${LOGIN_SUCCESS_MESSAGE}     5s
    Page Should Contain         ${LOGIN_SUCCESS_MESSAGE}
