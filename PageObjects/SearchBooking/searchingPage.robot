*** Settings ***
Resource            ../Base/base.robot
Resource            ../HomePage/homePage.robot
Resource            ../LoginPage/loginPage.robot
Variables        searchingPageLocators.yaml





*** Keywords ***
Go to search
    Wait Until Element Is Visible    ${searchingDirec}
    Click Element                    ${searchingDirec}
Input booking code 
    Wait Until Element Is Visible    ${searchingPage}
    Input Text    ${bookingCodeInput}    DA935
Click search button
    Click Element    ${searchingStart}
Verify booking code 
    Wait Until Element Is Visible    ${searchingResult}

# Negative
Input wrong booking code
    Wait Until Element Is Visible    ${searchingPage}
    Input Text    ${bookingCodeInput}    DA123
Verify wrong booking code
    Wait Until Element Is Visible    ${searchingPage}