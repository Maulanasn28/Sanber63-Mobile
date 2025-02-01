*** Settings ***
Documentation        Execute scenario user searching booking flight ticket

Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/SearchBooking/searchingPage.robot


Test Setup          Run Keywords    Open Flight Application    
...                 AND     Login With Valid Credentials
Test Teardown       Close Flight Application


*** Test Cases ***
User should be able to find the flight information by searching with the right booking code
    Go to search
    Input booking code
    Click search button
    Verify booking code

User should not be able to find the flight information by searching with the wrong booking code
    Go to search
    Input wrong booking code
    Click search button
    Verify wrong booking code