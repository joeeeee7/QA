* Settings *
Documentation    Close Account
Library  SeleniumLibrary

* Variables *
${account}    //a[@class="trading-hub-header__setting"]
${account_closing}    //a[@href="/account/closing-account"]
${close_btn}    //button[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]
${checkbox_1}    //*[@name="financial-priorities"]//parent::label  
${checkbox_2}   //*[@name="not-user-friendly"]//parent::label   
${continue_btn}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]
${back_account_btn}    //*[@class="dc-form-submit-button account-closure-warning-modal__close-account-button dc-form-submit-button--relative"]/button[1]
${prompt_message}    //span[@class="dc-text account-closure-warning-modal__warning-message"]
${checkbox_4}   //*[@name="other-reasons"]//parent::label   
${text_area}    //textarea[@name="other_trading_platforms"]                   



* Test Cases *
TC05 User clicking the “Go Back” button and proceeds to edit the information on adding more reasons
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
    Wait Until Element Is Visible    ${checkbox_1}    10
    Click Element    ${checkbox_1}
    Wait Until Element Is Visible    ${checkbox_2}    10
    Click Element    ${checkbox_2}
    Wait Until Element Is Visible    ${continue_btn}    10
    Click Element    ${continue_btn}
    Page Should Contain Element    ${prompt_message}    10
    Click Element    ${prompt_message}
    Wait Until Element Is Visible    ${back_account_btn}    10
    Click Element    ${back_account_btn}
    Wait Until Element Is Visible    ${checkbox_4}    10
    Click Element    ${checkbox_4}
    Wait Until Element Is Visible    ${text_area}    10
    Input Text    ${text_area}     Editing more information 
    Sleep    20