*** Settings ***
Resource    ../PageObjects/BookFlightPage/bookFlightPage.robot
Resource    ../PageObjects/LoginPage/loginPage.robot
Resource    ../PageObjects/BookingPage/bookingPage.robot


*** Test Cases ***
User should be able to select class and book flight with additional features
    Open Flight Application
    Login With Valid Credentials
    Go to Booking Page
    Select Just Ticket Option
    Toggle Plus Minus One Day
    Input Start Date           2025-02-01
    Input End Date             2025-02-07
    Select Class               economy
    Click Book Button
    Close Flight Application

User should be able to select class and book flight with select class first
    Open Flight Application
    Login With Valid Credentials
    Go to Booking Page
    Select Just Ticket Option
    Toggle Plus Minus One Day
    Input Start Date           2025-02-01
    Input End Date             2025-02-07
    Select Class               first
    Click Book Button
    Close Flight Application

User should be able to select class and book flight with select class business
    Open Flight Application
    Login With Valid Credentials
    Go to Booking Page
    Select Just Ticket Option
    Toggle Plus Minus One Day
    Input Start Date           2025-02-01
    Input End Date             2025-02-07
    Select Class               business
    Click Book Button
    Close Flight Application

