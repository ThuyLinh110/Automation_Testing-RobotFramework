*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    li123nh@gmail.com
    input text  id:Password   Test@123
    click element   xpath://button[@class='button-1 login-button']

