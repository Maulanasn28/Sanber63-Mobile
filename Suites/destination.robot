*** Settings ***
Documentation        Execute scenario user Select Destination Flight

Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/DestinationPage/destinationPage.robot

Test Setup          Run Keywords    Open Flight Application    
...                 AND     Login With Valid Credentials


*** Test Cases ***
User Books a Ticket and Choose Destination Chicago to Paris with Bussines Class
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From Chicago City
    Select Destination To Paris City
    Select Bussines Class
    Select Year
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking

