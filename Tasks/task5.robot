* Settings *
Documentation  single test for login
Library  SeleniumLibrary

* Variables *
${Dropdown}  //div[@data-testid="dt_dropdown_container"]
${Demo}   //*[@id="demo"]
${dropdown_btn}     //span[@class="dc-text dc-dropdown__display-text"]
${Dtrader}    //a[@href="/"]
${drop_men}    //*[@class="ic-icon cq-symbol-dropdown"]
${Volatility}    //span[@class="sc-mcd__item sc-mcd__item--R_50 "]
${Slider}    //*[@id="trade_container"]//span[5]
${tradetype}    //div[@id="dt_contract_dropdown"]
${multiply}    //div[@id="dt_contract_multiplier_item"]

* Test Cases *
Task 5
    Open Browser    https://app.deriv.com    chrome
    Maximize Browser Window    
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    jodwdddhanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element    //button[@name="login"]
    Wait Until Page Contains Element    ${dropdown_btn}     10
    Click Element   ${dropdown_btn}
    Wait Until Element Is Visible   //*[@class="dc-list"]   15
    Wait Until Element Is Visible   ${Demo}    15
    Click Element     ${Demo} 
    Wait Until Page Contains Element    ${Dtrader}     10
    Click Element   ${Dtrader}
    Wait Until Element Is Visible    ${drop_men}     15
    Click Element     ${drop_men} 
    Wait Until Element Is Visible    ${Volatility}     10
    Click Element     ${Volatility} 
    Wait Until Element Is Visible    ${tradetype}    10
    Click Element    ${tradetype}
    Wait Until Element Is Visible    ${multiply}    10
    Click Element    ${multiply}