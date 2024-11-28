*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
User Login To FIT WAY Platform With ${login_email} And ${login_password}
    CommonKeywords.Wait Until Element Is Ready Then Click Element    xpath=//a[text()="เข้าสู่ระบบ"]
    CommonKeywords.Wait Until Element Is Ready Then Input Text        name=email                ${login_email}
    CommonKeywords.Wait Until Element Is Ready Then Input Text        name=password             ${login_password}
    CommonKeywords.Wait Until Element Is Ready Then Click Element    xpath=//button[@type="submit" and text()="เข้าสู่ระบบ"]

FIT WAY Should Display Message As "${expected_message}"
    CommonKeywords.Wait Until Page Contains Element Then Verify Text        ${expected_message}

User Logs Out Of FIT WAY Platform
    CommonKeywords.Wait Until Element Is Ready Then Click Element    xpath=//a[text()="ออกจากระบบ"]

User Login Failed To FIT WAY Platform With ${invalid_email} And ${login_password}
    CommonKeywords.Wait Until Element Is Ready Then Click Element    xpath=//a[text()="เข้าสู่ระบบ"]
    CommonKeywords.Wait Until Element Is Ready Then Input Text        name=email                ${invalid_email}
    CommonKeywords.Wait Until Element Is Ready Then Input Text        name=password             ${login_password}
    CommonKeywords.Wait Until Element Is Ready Then Click Element    xpath=//button[@type="submit" and text()="เข้าสู่ระบบ"]
