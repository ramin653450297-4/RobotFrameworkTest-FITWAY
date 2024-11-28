*** Settings ***
Library         SeleniumLibrary
Resource        ../keyword/Signup.robot
Resource        ../keyword/HomePage.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser

*** Test Cases ***
As a user, I want to signup successfully with valid data
    When user signup to FIT WAY platform with ${signup_email} and ${signup_name} and ${signup_lastname} and ${signup_phone} and ${signup_password}
    Then FIT WAY should display message as "สมัครสมาชิกสำเร็จ!"

As a User, I Want To Signup Failed With Duplicate Email
    When User Signup Failed To FIT WAY Platform With ${signup_email} and ${signup_name} and ${signup_lastname} and ${signup_phone} and ${signup_password}
    Then FIT WAY should display message as "Email already registered"
