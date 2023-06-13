* Settings *
Documentation  single test for login
Library  SeleniumLibrary
* Variables *
${account}    //a[@class="trading-hub-header__setting"]
${api_token}    //a[@href="/account/api-token"]
${read_checkbox}    //*[@name="read"]//parent::label
${trade_checkbox}    //*[@name="trade"]//parent::label 
${payments_checkbox}    //*[@name="payments"]//parent::label                                                
${trading_information_checkbox}    //*[@name="trading_information"]//parent::label                                                
${admin_checkbox}    //*[@name="admin"]//parent::label                                                
${token_input}    //*[@name="token_name"]
${create_btn}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button"]
* Test Cases *
TC01 
    Open Browser    https://app.deriv.com    chrome
    Maximize Browser Window    
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    johanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element    //button[@name="login"]
    Wait Until Element Is Visible    ${account}    10
    Click Element    ${account}
    Wait Until Element Is Visible    ${api_token}    10
    Click Element    ${api_token}
    Wait Until Element Is Visible    ${read_checkbox}    10
    Click Element    ${read_checkbox}
    Wait Until Element Is Visible    ${token_input}    10
    Click Element    ${token_input}
    Input Text    ${token_input}    test123
    Wait Until Element Is Visible    ${create_btn}    10
    Click Element    ${create_btn}
    Sleep    20



TC02
    Open Browser    https://app.deriv.com    chrome
    Maximize Browser Window    
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    johanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element    //button[@name="login"]
    Wait Until Element Is Visible    ${account}    10
    Click Element    ${account}
    Wait Until Element Is Visible    ${api_token}    10
    Click Element    ${api_token}
    Wait Until Element Is Visible    ${read_checkbox}    10
    Click Element    ${read_checkbox}
    Wait Until Element Is Visible    ${token_input}    10
    Click Element    ${token_input}
    Input Text    ${token_input}    test123
    Wait Until Element Is Visible    ${create_btn}    10
    Click Element    ${read_checkbox}
    Click Element    ${trade_checkbox}
    Click Element    ${payments_checkbox}
    Click Element    ${trading_information_checkbox}
    Click Element    ${admin_checkbox}
    Sleep    20

TC_03: Create API Token by selecting TRADE access on the scopes
    Open Browser    https://app.deriv.com    chrome
    Maximize Browser Window    
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    johanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element    //button[@name="login"]
    Wait Until Element Is Visible   ${account}     10
    Click Element    ${account}  
    Wait Until Element Is Visible   ${api_token}     10
    Click Element    ${api_token}
    Wait Until Element Is Visible    ${trade_checkbox}    10
    Click Element    ${trade_checkbox} 
    Wait Until Element Is Visible    ${token_input}    10
    Input Text     ${token_input}    test
    Wait Until Element Is Visible    ${create_btn}    10
    Click Element     ${create_btn}   
    Sleep    20

TC_04: Create API Token by not selecting any access option on the scopes
    Open Browser    https://app.deriv.com    chrome
    Maximize Browser Window    
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    johanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element    //button[@name="login"]
    Wait Until Element Is Visible   ${account}     10
    Click Element    ${account}  
    Wait Until Element Is Visible   ${api_token}     10
    Click Element    ${api_token}
    Wait Until Element Is Visible    ${trade_checkbox}    10
    Wait Until Element Is Visible    ${token_input}    10
    Input Text     ${token_input}    test
    Element Should Be Disabled    ${create_btn}    
    Sleep    20

TC_05: Create API Token by not selecting any access option on the scopes
    Open Browser    https://app.deriv.com    chrome
    Maximize Browser Window    
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    johanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element    //button[@name="login"]
    Wait Until Element Is Visible   ${account}     10
    Click Element    ${account}  
    Wait Until Element Is Visible   ${api_token}     10
    Click Element    ${api_token}
    Wait Until Element Is Visible    ${trade_checkbox}    10
    Wait Until Element Is Visible    ${token_input}    10
    Input Text     ${token_input}    efefefnaewfnawefnewafiwafiwfawnfwnff3hd2h392892gf2
    Element Should Be Disabled    ${create_btn}   
    Sleep    20