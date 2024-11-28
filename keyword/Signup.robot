*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user signup to FIT WAY platform with ${signup_email} and ${signup_name} and ${signup_lastname} and ${signup_phone} and ${signup_password}
    CommonKeywords.Wait until element is ready then click element     xpath=//a[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email                ${signup_email}
    CommonKeywords.Wait until element is ready then input text        name=password          ${signup_password}
    CommonKeywords.Wait until element is ready then input text        name=firstName            ${signup_name}
    CommonKeywords.Wait until element is ready then input text        name=lastName             ${signup_lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber          ${signup_phone}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

FIT WAY should display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}

User Signup Failed To FIT WAY Platform With ${signup_email} and ${signup_name} and ${signup_lastname} and ${signup_phone} and ${signup_password}
    CommonKeywords.Wait until element is ready then click element     xpath=//a[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email                ${signup_email}
    CommonKeywords.Wait until element is ready then input text        name=password          ${signup_password}
    CommonKeywords.Wait until element is ready then input text        name=firstName            ${signup_name}
    CommonKeywords.Wait until element is ready then input text        name=lastName             ${signup_lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber          ${signup_phone}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]
