*** Settings ***
Resource  ../Register_Keyword/Register_Keyword.robot
#Test Teardown  Close Browser
Force Tags   Register    All
*** Test Cases ***
Verify Error Message When Email Is Empty
    #[Tags]  TC1
    User Navigate To HomePage
    User Click On Link Register
    User Clear Value On Email
    User Click On Submit Button
    User Verify Error Message Is Correct When Email Is Empty

Register User Is Success
    User Input Email
    User Click On Submit Button
    User Get UserID Register
    User Get Password Register
