*** Settings ***
Library    AppiumLibrary
Resource   ../Base/base.robot
Variables  bookFlightLocators.yaml


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
    Select Date    ${start_date}    ${START_DATE}

Input End Date
    [Arguments]    ${end_date}
    Select Date    ${end_date}    ${END_DATE}

Select Date
    [Arguments]    ${date}    ${target}
    ${year}=    Evaluate    str(${date}).split("-")[0]
    ${month}=   Evaluate    str(${date}).split("-")[1]
    ${day}=     Evaluate    str(${date}).split("-")[2]
    
    Click Element    ${target}
    Wait Until Page Contains Element    ${YEAR_SELECTOR}
    Click Element    xpath=${YEAR_SELECTOR}//android.widget.TextView[@text="${year}"]

    Wait Until Page Contains Element    ${MONTH_SELECTOR}
    ${month_name}=   Evaluate    ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"][int(${month})-1]
    Click Element    xpath=${MONTH_SELECTOR}//android.widget.TextView[@text="${month_name}"]

    Wait Until Page Contains Element    ${DAY_SELECTOR}
    Click Element    xpath=${DAY_SELECTOR}//android.widget.TextView[@text="${day}"]

    Wait Until Page Contains Element    ${CONFIRM_BUTTON}
    Click Element    ${CONFIRM_BUTTON}

Select Class        
    [Arguments]                      ${class_option}
    Wait Until Element Is Visible    ${class_dropdown}   
    Click Element                    ${class_dropdown}
    Wait Until Element Is Visible    ${class_option}
    Click Element                    ${class_option}

Click Book Button
    Wait Until Element Is Visible    ${book_button}
    Click Element                    ${book_button}