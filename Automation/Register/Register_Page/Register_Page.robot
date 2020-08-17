*** Settings ***
Resource   ../../Common/action.robot
Resource   ../Register_Locators/Register_Locators.robot
Resource   ../../Data/register_variables.robot
Library  FakerLibrary  WITH NAME  faker

*** Keywords ***
Click On Link Register
    Click On Link    ${register_link}

Input Email
    Email Random
    Input Text On Element    ${emailID_txt}    ${email}

Click On Submit Button
    Click On Element    ${submit_btn}

Get UserID Register
    ${get_userID} =     Get Text On Element     ${userID_lbl}
    Set Global Variable     ${NEW_USERID}    ${get_userID}
    Log  userID=${NEW_USERID}   HTML

Get Password Register
    ${get_pass} =    Get Text On Element     ${password_lbl}
    Set Global Variable     ${NEW_PASS}    ${get_pass}
    Log  pass=${NEW_PASS}   HTML

Clear Value On Email
    Clear Text On Element   ${emailID_txt}

Verify Error Message When Email Is Emplty Is Correct
    Verify That Action Is Correctly     ${error_message_lbl}    ${email_error_empty}
