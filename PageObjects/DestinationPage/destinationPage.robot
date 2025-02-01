*** Settings ***
Resource            ../LoginPage/loginPage.robot
Variables           destinationPageLocator.yaml


*** Keywords ***
Go to Booking Page
    Wait Until Element Is Visible    ${btnBook_destinationPage}
    Click Element                    ${btnBook_destinationPage}


Verify Book Flight Page
    Wait Until Element Is Visible    ${verifyBookFlightPage_destinationPage}

Select Departure From Chicago City
    Click Element                    ${fromCity_destinationPage}
    Wait Until Element Is Visible    ${chicagoCity_destinationPage}
    Click Element                    ${chicagoCity_destinationPage}

Select Destination To Paris City 
    Click Element                    ${toCity_destinationPage}
    Wait Until Element Is Visible    ${parisCity_destinationPage}
    Click Element                    ${parisCity_destinationPage}

Select Bussines Class
    Click Element                    ${class_destinationPage}
    Wait Until Element Is Visible    ${bussines_destinationPage}
    Click Element                    ${bussines_destinationPage}

Select Year
    Click Element                    ${startDate_destinationPage}
    Wait Until Element Is Visible    ${verifyChooseYear_destinationPage}
    Click Element                    ${chooseYear_destinationPage}
    Click Element                    ${btnOkChooseYear_destinationPage}

Select Start Date
    Click Element                    ${startDate_destinationPage}
    Wait Until Element Is Visible    ${verifyChooseDate_destinationPage}
    Click Element                    ${chooseDate_destinationPage}
    Click Element                    ${btnOkChooseDate_destinatioonPage}

Select End Date
    Click Element                    ${endDate_destinationPage}
    Wait Until Element Is Visible    ${verifyChooseDate_destinationPage}
    Click Element                    ${chooseDate_destinationPage}
    Click Element                    ${btnOkChooseDate_destinatioonPage}

Click just Flight Option 
    Click Element                    ${justFlightOps_destinationPage}      

Click +- One day Option 
    Click Element                    ${oneDayOps_destinationPage}

Click Button Confirm Booking
    Click Element                    ${btnBooking_destinationPage}