*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    click link  xpath://a[@class='ico-login']
#    input text  id:Email    li123nh@gmail.com
#    input text  id:Password   Test@123
#    click element   xpath://button[@class='button-1 login-button']

    ${email_txt}  set variable    id:Email
    element should be visible   ${email_txt}
    element should be enabled   ${email_txt}
    input text  ${email_txt}  linh123@gmail.com
    sleep   3
    clear element text  ${email_txt}
    sleep   3
    close browser


