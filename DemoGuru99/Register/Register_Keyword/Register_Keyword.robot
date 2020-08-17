*** Settings ***
Resource  ../Register_Page/Register_Page.robot
Resource  ../../Data/url_variables.robot
Resource     ../../URL_Page/URL_Page.robot

*** Keywords ***
User Navigate To HomePage
    Navigate To HomePage

User Click On Link Register
    Click On Link Register

User Input Email
    Input Email

User Click On Submit Button
    Click On Submit Button

User Get UserID Register
    Get UserID Register

User Get Password Register
    Get Password Register

User Clear Value On Email
    Clear Value On Email

User Verify Error Message Is Correct When Email Is Empty
    Verify Error Message When Email Is Emplty Is Correct