*** Settings ***
Documentation        Execute scenario user Reservation Flight Ticket

Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/BookingPage/bookingPage.robot

Test Setup          Run Keywords    Open Flight Application    
...                 AND     Login With Valid Credentials
Test Teardown       Close Flight Application


*** Test Cases ***
The user books a ticket by selecting the price $1860
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $1860
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $2055
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $2055
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $1980
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $1980
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $1755
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $1755
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $1990
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $1990
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $2084
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $2084
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $1798
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $1798
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $2015
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $2015
    Click Button Confirm 
    Verify ID Reservation Ticket 

The user books a ticket by selecting the price $2250
    Go to Booking Page
    Verify Book Flight Page
    Select Departure From New York City
    Select Destination To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Click just Flight Option 
    Click +- One day Option 
    Click Button Confirm Booking 
    Verify Confirm Booking Page
    Verify Departure City
    Verify Destination City
    Select Price $2250
    Click Button Confirm 
    Verify ID Reservation Ticket 