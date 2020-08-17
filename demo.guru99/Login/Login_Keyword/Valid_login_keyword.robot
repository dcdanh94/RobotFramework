*** Settings ***
Resource     ../Login_Page/Valid_login_page.robot
Resource     ../../Data/url_variables.robot
Resource     ../../URL_Page/URL_Page.robot
*** Keywords ***
User Navigate To HomePage
    Navigate To HomePage

User Open New Tab Navigate To HomePage
    Open New Tab Navigate To HomePage

User Input UserID
    #Input UserID
    Input UserID Register

User Input Password
    #Input Password
    Input Password Register

User Click Login Button
    Click Login Button

User Verify Login Is Success
    Verify Login Is Success