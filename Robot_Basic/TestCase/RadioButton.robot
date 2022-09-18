*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://www.techlistic.com/p/selenium-practice-form.html


*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    TestRadioButton
    sleep    3
    close browser


*** Keywords ***
TestRadioButton
#    text box
    input text    name:firstname    Linh
    input text    name:lastname    Nguyen
#    radio button
    select radio button    sex    Female
    select radio button    exp    3

#    checkbox
    select checkbox    //input[contains(@id,'profession-1')]
#    select checkbox    Selenium Webdriver

#    dropdown
    select from list by index    //select[contains(@name,'continents')]    3
#
#
#    listbox
#    select from list by label    selenium_commands    Wait Commands
#

    sleep    2
##    button
    click link    //a[contains(text(),'Click here to Download File')]
    sleep    2
