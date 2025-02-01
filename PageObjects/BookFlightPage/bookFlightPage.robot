*** Settings ***
Library    AppiumLibrary
Resource   ../Base/base.robot
Variables    bookFlightLocators.yaml

*** Keywords ***
Navigate To Book Flight Page
    Wait Until Element Is Visible    ${book_flight_tittle}

Select Just Ticket Option
    Wait Until Element Is Visible    ${just_ticket_option}
    Click Element                    ${just_ticket_option}

Select Ticket Plus Hotel Option
    Wait Until Element Is Visible    ${ticket_plus_hotel_option}
    Click Element                    ${ticket_plus_hotel_option}

Toggle Plus Minus One Day
    Wait Until Element Is Visible    ${plus_minus_one_day_toggle}
    Click Element                    ${plus_minus_one_day_toggle}

Input Start Date
    [Arguments]    ${start_date}
    Wait Until Element Is Visible    ${start_date_field}
    Click Element                    ${start_date_field}
    Wait Until Element Is Visible    ${day_selector.format(start_date)}
    Click Element                    ${day_selector.format(start_date)}
    Wait Until Element Is Visible    ${confirm_button}
    Click Element                    ${confirm_button}

Input End Date
    [Arguments]    ${end_date}
    Wait Until Element Is Visible    ${end_date_field}
    Click Element                    ${end_date_field}
    Wait Until Element Is Visible    ${day_selector.format(end_date)}
    Click Element                    ${day_selector.format(end_date)}
    Wait Until Element Is Visible    ${confirm_button}
    Click Element                    ${confirm_button}

Select Class        
    [Arguments]                      ${class_option}
    Wait Until Element Is Visible    ${class_dropdown}   
    Click Element                    ${class_dropdown}
    Wait Until Element Is Visible    ${class_option}
    Click Element                    ${class_option}

Click Book Button
    Wait Until Element Is Visible    ${book_button}
    Click Element                    ${book_button}

