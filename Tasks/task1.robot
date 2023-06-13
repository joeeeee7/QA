*** Settings ***
Documentation  single test for login
Library  SeleniumLibrary

*** Variables ***
${DropDown}   //span[@class="dc-text dc-dropdown__display-text"] 
${DemoDropDown}    //div[@id="demo"] 

*** Test Cases ***
login app deriv
    Open Browser    https://app.deriv.com   chrome
    Set Window Size    1280    1024
    Wait Until Page Contains Element   dt_login_button    10
    Click Element   dt_login_button
    Wait Until Page Contains Element   txtEmail    10
    Input Text    txtEmail    jodwdddhanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element   //button[@name="login"]
    Wait Until Page Contains Element    ${DropDown}    10
    Click Element    ${DropDown}
    Wait Until Element Is Visible    //*[@class="dc-list"]     10
    Wait Until Page Contains Element    ${DemoDropDown}    10
    Click Element    ${DemoDropDown}
    Sleep  10