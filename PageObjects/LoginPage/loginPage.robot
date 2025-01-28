*** Settings ***
Resource                ../Base/base.robot
Resource                ../HomePage/homePage.robot
Variables               loginPageLocators.yaml


*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${INVALID_EMAIL}             support@ngendigital.co.id
${VALID_PASSWORD}            abc123
${INVALID_PASSWORD}          abc12345

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${fieldEmail_loginPage}
    Wait Until Element Is Visible    ${fieldPassword_loginPage}
    Wait Until Element Is Visible    ${btnSignIn_loginPage}

Input User Email On Login Page
    [Arguments]   ${email}
    Input Text    ${fieldEmail_loginPage}    ${email}

Input User Password On Login Page
    [Arguments]   ${password}
    Input Text    ${fieldPassword_loginPage}    ${password}

Click Sign In Button On Login Page
    Click Element    ${btnSignIn_loginPage}

Verify User active name 
    Wait Until Element Is Visible      ${userActiveName_loginPage}

Verify User Stay in Login Screen 
    Wait Until Element Is Visible      ${btnSignIn_loginPage}


# SCENARIO
Login With Valid Credentials
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Login With Invalid Credentials
    [Arguments]    ${email}=${INVALID_EMAIL}    ${password}=${INVALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Empty field email and password
    [Arguments]    ${email}=     ${password}= 
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page
    