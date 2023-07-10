*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://rahulshettyacademy.com/AutomationPractice/
${browser}  chrome

*** Test Cases ***
InputBox
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep   2
    input text  xpath://*[@id="displayed-text"]      India
    click button    xpath://*[@id="show-textbox"]
    clear element text  xpath://*[@id="displayed-text"]
    sleep   2
    input text  xpath://*[@id="displayed-text"]     USA
    click button    xpath://*[@id="show-textbox"]

*** Keywords ***

