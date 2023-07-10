*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://rahulshettyacademy.com/AutomationPractice/
${browser}  chrome

*** Test Cases ***
AutomationPractice
#    windows_tab
#    alert
#    browsercommands
#    screenshot
#    scrolldown
#    mousesection
    DragDrop

*** Keywords ***
windows_tab
    open browser    https://robotframework.org/     chrome
    Maximize Browser Window
    Sleep   3
    click link  xpath://*[@id="app"]/div[5]/div[5]/div[2]/div[2]/a/h3
    sleep   3
    switch window   Robot Framework       # to close previous tab #Robot Framework->inspect-><title>
    sleep   3
    close window
    sleep   3
    close browser

alert
    open browser    https://testautomationpractice.blogspot.com/     chrome
    Maximize Browser Window
    Sleep   2
    click button  xpath://button[normalize-space()='Click Me']
    sleep   3
    handle alert    accept  #"accept to ok # "dissmis" to cancle
    # To verify the alert mesg # use any alert verify or handle alert
#    alert should be present    You pressed Cancel!
#    alert should not be present    You pressed Cancel!

browsercommands
    open browser    https://www.google.com/     chrome
    Maximize Browser Window
    Sleep   2
    go to   https://www.flipkart.com/
    sleep   3
    go back
    sleep   3

screenshot
    open browser    https://www.yahoo.com/     chrome
    Maximize Browser Window
    Sleep   1
    capture element screenshot  xpath://*[@id="module-ntk"]/div/div[1]/div/div/a/div[1]/img     img.png
    capture page screenshot      website.png

scrolldown
    open browser    https://en.wikipedia.org/wiki/Main_Page     chrome
    Maximize Browser Window
    Sleep   1
#    use any from below
#    execute javascript  window.scrollTo(0,1500)    # (horizontal scroll,vertical scroll)
#    scroll element into view    xpath://*[@id="mp-tfp"]/table/tbody/tr/td[1]/a/img
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)

mousesection
    open browser    https://testautomationpractice.blogspot.com/     chrome
    Maximize Browser Window
    Sleep   1
    open context menu   xpath://*[@id="Wikipedia1_wikipedia-search-input"]
    Sleep   2
    double click element    xpath://*[@id="HTML10"]/div[1]/button

DragDrop
    open browser    https://testautomationpractice.blogspot.com/     chrome
    Maximize Browser Window
    drag and drop   xpath://*[@id="gallery"]/li[1]/img      xpath://*[@id="trash"]
    sleep   1
    drag and drop   xpath://*[@id="gallery"]/li/img      xpath://*[@id="trash"]
    sleep   1

