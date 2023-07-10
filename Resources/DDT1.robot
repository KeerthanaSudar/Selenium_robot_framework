*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot    #connected or imported file and ../ --> currect directory
Suite Setup     Opening my browser
Suite Teardown      Closing my browsers
Test Template      Invaild login
Library     SeleniumLibrary
Resource    ../Resources/resources.robot
Suite Setup     Opening my browser
Suite Teardown      Closing my browsers
Test Template   Invaild login

*** Test Cases ***
right user wrong pwd   admin@yourstore.com     adin
wrong user right pwd   admin@wrong.com     admin
right user empty pwd   admin@yourstore.com      ${EMPTY}
empty user right pwd    ${EMPTY}        admin
wrong user wrong pwd    admin@wrong.com     adin

*** Keywords ***
Invaild login
    [Arguments]     ${username}     ${password}
    inputing Username   ${username}
    inputing password   ${password}
    sleep   1
    click login button
    Error message should be visible


