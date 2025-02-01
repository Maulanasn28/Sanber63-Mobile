*** Settings ***
Resource    ../PageObjects/BookFlightPage/bookFlightPage.robot
Resource    ../PageObjects/LoginPage/loginPage.robot
Resource    ../PageObjects/BookingPage/bookingPage.robot


*** Test Cases ***
Book Flight With Business Class
    [Documentation]    Test case to book a flight with Business class
    Navigate To Book Flight Page
    Select Just Ticket Option
    Toggle Plus Minus One Day
    Input Start Date    30 August 2019
    Input End Date      31 August 2019
    Select Class        ${class_business}
    Click Book Button

Book Flight With First Class
    [Documentation]    Test case to book a flight with First class
    Navigate To Book Flight Page
    Select Just Ticket Option
    Toggle Plus Minus One Day
    Input Start Date    1 September 2019
    Input End Date      2 September 2019
    Select Class        ${class_first}
    Click Book Button

Book Flight With Economy Class
    [Documentation]    Test case to book a flight with Economy class
    Navigate To Book Flight Page
    Select Just Ticket Option
    Toggle Plus Minus One Day
    Input Start Date    15 September 2019
    Input End Date      16 September 2019
    Select Class        ${class_economy}
    Click Book Button


