* Settings *
Documentation    Close Account
Library  SeleniumLibrary

* Variables *
${account}    //a[@class="trading-hub-header__setting"]
${account_closing}    //a[@href="/account/closing-account"]
${close_btn}    //button[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]
${close_account_btn}    //*[@class="dc-form-submit-button account-closure-warning-modal__close-account-button dc-form-submit-button--relative"]/button[2]
${character_input}    //textarea[@name="do_to_improve"] 
* Test Cases *
TC04 User includes more than 110 characters in the text box field
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
    Wait Until Element Is Visible    ${character_input}    10
    Input Text    ${character_input}     HIneijbewifbwiuefbwebwubwubwbwbwnkwcnkwnckwjcnknwcnnwkebeiwwwcwkjcnwjkcnwjnckwcnwncnwnckwncjwncjwncjwncnwjcnwj
    Wait Until Element Is Visible    ${close_account_btn}    10
    Click Element    ${close_account_btn}
    Sleep    20