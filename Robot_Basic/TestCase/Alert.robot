*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
HandleAlert
    open browser    ${url}  ${browser}
    maximize browser window
    Alert
    sleep   2
    close browser

*** Keywords ***
Alert
    click element   //div[contains(@class,'widget-content')]//button[contains(text(),'Click Me')]
    sleep   2

#    handle alert    accept
#    handle alert    dismiss
    handle alert    leave







