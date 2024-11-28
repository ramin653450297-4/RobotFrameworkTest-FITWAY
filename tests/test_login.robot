*** Settings ***
Library         SeleniumLibrary
Resource        ../keyword/Login.robot
Resource        ../keyword/HomePage.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser

*** Test Cases ***
As a User, I Want To Login Successfully With Valid Data
    User Login To FIT WAY Platform With ${login_email} And ${login_password}
    FIT WAY Should Display Message As "ยินดีต้อนรับเข้าสู่ระบบ"
    User Logs Out Of FIT WAY Platform

As a User, I Want To Login Failed With Invalid Email
    User Login Failed To FIT WAY Platform With ${invalid_email} And ${login_password}
    FIT WAY Should Display Message As "User not found"
