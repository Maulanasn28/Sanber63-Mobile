*** Settings ***
Resource          ../PageObjects/base/base.robot
Resource          ../PageObjects/homePage/homePage.robot
Resource          ../PageObjects/loginPage/loginPage.robot
Test Setup        Run Keywords
...              Open Flight Application 


*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${INVALID_EMAIL}             support@ngendigital.co.id
${VALID_PASSWORD}            abc123
${INVALID_PASSWORD}          abc12345

*** Test Cases ***
User should be able to login with valid credentials
    [Tags]    Positive
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page    ${VALID_EMAIL}
    Input User Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify Home Page Appears

User should be able to login with invalid email
    [Tags]    Negative
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page    ${INVALID_EMAIL}
    Input User Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify User Stay in Login Screen

User should be able to login with invalid password
    [Tags]    Negative
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page    ${VALID_EMAIL}
    Input User Password On Login Page    ${INVALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify User Stay in Login Screen

User should be able to login with invalid credentials
    [Tags]    Negative
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page    ${INVALID_EMAIL}
    Input User Password On Login Page    ${INVALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify User Stay in Login Screen

User should be able to login with empty email
    [Tags]    Negative
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify User Stay in Login Screen

User should be able to login with empty password
    [Tags]    Negative
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page    ${VALID_EMAIL}
    Click Sign In Button On Login Page
    Verify User Stay in Login Screen

User should be able to login with empty fields
    [Tags]    Negative
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Click Sign In Button On Login Page
    Verify User Stay in Login Screen
