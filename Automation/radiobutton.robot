*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://rahulshettyacademy.com/AutomationPractice/
${browser}  chrome

*** Test Cases ***
AutomationPractice
#    Radio buttton and check boxes testing
#    dropdown
#    speedtest
#    timeout
#    new
    closebrowser

*** Keywords ***
Radio buttton and check boxes testing
    open browser    ${url}  ${browser}
    Maximize Browser Window
    select radio button  radioButton     radio1
    Sleep   1
    select checkbox  checkBoxOption1
    select checkbox  checkBoxOption2
    Sleep   1
    unselect checkbox  checkBoxOption1
    sleep   1

dropdown
    open browser    ${url}  ${browser}
    Maximize Browser Window
    select from list by label   dropdown-class-example     Option1
    Sleep   1
    select from list by index   dropdown-class-example     2
    Sleep   1

speedtest
    ${speed}    get selenium speed
    log to console  ${speed}    #this will print speed #at start default speed will b zero
    open browser    ${url}  ${browser}
    Maximize Browser Window
    set selenium speed  3 seconds   #waits after every command so that we can see changes
    select radio button  radioButton     radio1
    close browser
    ${speed}    get selenium speed
    log to console  ${speed}

timeout
    open browser    ${url}  ${browser}
    Maximize Browser Window
    set selenium timeout    18 seconds  #it will update the time out
    wait until page contains    Practice Page    #this will wait until till what we want to execute and then it will execute other line
    select radio button  radioButton     radio1
    close browser

new
    open browser    ${url}  ${browser}      # not working
    Maximize Browser Window
    ${wait}     Get selenium imlicit wait
    log to console  ${wait}
    set selenium imlicit wait   10 seconds  #instead of giving implicit right away it will wait for 10s
    select radio button  radioButtonn     radio
    ${wait}     Get selenium imlicit wait
    log to console  ${wait}
    select checkbox  checkBoxOption1
    select checkbox  checkBoxOption2
    close browser

closebrowser
    open browser    https://www.google.com/     chrome
    Maximize Browser Window
    sleep   3
    open browser    https://www.flipkart.com/     chrome
    Maximize Browser Window
    sleep   3
#    close browser (this only close the latest browser)
    close all browsers