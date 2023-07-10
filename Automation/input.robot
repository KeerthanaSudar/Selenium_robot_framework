*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/search?q=amazon&source=hp&ei=2Uf_Y6m8I8212roP6baRwAs&iflsig=AK50M_UAAAAAY_9V6TWrIfL2PnMN9lzTNLa_QOKr6hNg&ved=0ahUKEwjpjN-w4Lr9AhXNmlYBHWlbBLgQ4dUDCAg&oq=amazon&gs_lcp=Cgdnd3Mtd2l6EAwyEQguEIAEELEDEIMBEMcBENEDMgsIABCABBCxAxCDATILCAAQgAQQsQMQgwEyCwgAEIAEELEDEIMBMgsIABCABBCxAxCDATIICAAQgAQQyQMyBQgAEIAEMgUIABCABDIICAAQgAQQsQMyBQgAEIAEOgsILhCABBCxAxCDAToOCAAQjwEQ6gIQjAMQ5QI6CAguENQCEIAEOggIABCxAxCDAToUCC4QgAQQsQMQgwEQxwEQ0QMQ1AI6BQguEIAEOgsILhCABBDHARDRAzoICC4QsQMQgwFQAFjPyBZgpfEgaAJwAHgCgAGpAYgB6AiSAQM1LjWYAQCgAQGwAQo&sclient=gws-wiz
${browser}  chrome

*** Test Cases ***
InputBox
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep   2
    input text  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input      Flipkart
    click button    xpath://button[@class="Tg7LZd"]
    sleep   2

*** Keywords ***

