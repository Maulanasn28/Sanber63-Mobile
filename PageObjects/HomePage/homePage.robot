*** Settings ***
Resource                ../Base/base.robot
Variables               homePageLocators.yaml

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible      ${logo_homePage}

Click Sign In Button On Home Page
    Wait Until Element Is Visible      ${btnSignIn_homePage}
    Click Element                      ${btnSignIn_homePage}