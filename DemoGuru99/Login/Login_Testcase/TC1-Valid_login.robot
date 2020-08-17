*** Settings ***
Resource  ../Login_Keyword/Valid_login_keyword.robot
Force Tags  Register    All
#Force Tags  Login       All
#Test Teardown  Close Browser
*** Test Cases ***
Login is valid
    [Tags]  login_success_1
    #User Navigate To HomePage
    User Open New Tab Navigate To HomePage
    User Input UserID
    User Input Password
    User Click Login Button
    User Verify Login Is Success
