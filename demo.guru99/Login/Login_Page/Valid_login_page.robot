*** Settings ***
Resource   ../../Common/action.robot
Resource   ../Login_Locators/loginPage_locators.robot
Resource   ../../Data/login_variables.robot
Resource   ../../Register/Register_Page/Register_Page.robot

*** Keywords ***
Input UserID
    Input Text On Element    ${userID_txt}    ${userID}

Input Password
    Input Text On Element    ${pass_txt}    ${password}

Input UserID Register
    Input Text On Element    ${userID_txt}    ${NEW_USERID}

Input Password Register
    Input Text On Element    ${pass_txt}    ${NEW_PASS}

Click Login Button
    Click On Element    ${login_btn}

Verify Login Is Success
    Verify That Action Is Correctly    ${login_success_locator}   ${login_success_message}



