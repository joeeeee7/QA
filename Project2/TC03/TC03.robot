* Settings *
Documentation    Close Account
Library  SeleniumLibrary

* Variables *
${account}    //a[@class="trading-hub-header__setting"]
${account_closing}    //a[@href="/account/closing-account"]
${close_btn}    //button[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]
${close_account_btn}    //*[@class="dc-form-submit-button account-closure-warning-modal__close-account-button dc-form-submit-button--relative"]/button[2]
${text_area}    //textarea[@name="other_trading_platforms"]                   

* Test Cases *
TC03 User includes special characters such as “.wfwf.@”
    Open Browser    https://app.deriv.com    chrome
    Maximize Browser Window    
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    jodwdddhanadeqdewfewffwen@besquare.com.my
    Input Password    txtPass    frefafefeg...
    Click Element    //button[@name="login"]
    Wait Until Element Is Visible    ${account}    10
    Click Element    ${account}
    Wait Until Element Is Visible    ${account_closing}    10
    Click Element    ${account_closing}
    Wait Until Element Is Visible    ${close_btn}    10
    Click Element    ${close_btn}
    Wait Until Element Is Visible    ${text_area}    10
    Input Text    ${text_area}     .wfwf.@
    Wait Until Element Is Visible    ${close_account_btn}    10
    Click Element    ${close_account_btn}
    Sleep    20