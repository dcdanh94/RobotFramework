*** Settings ***
Resource  ../../Common/action.robot
Resource  ../NewCustomer_Keyword/NewCustomer_Keyword.robot
Resource  ../../Data/newCustomer_variables.robot
Resource  ../NewCustomer_Locator/NewCustomer_Locator.robot


*** Keywords ***
Open NewCustomer Page
    Click On Link       ${newCustomer_link}

Verify NewCustomer Page Is Displayed
    Verify That Action Is Correctly    ${addCustomer_page}  ${addCustomer_title}

Input Customer Name
    Input Text On Element   ${customerName_txt}     ${_customerName}

Select Gender Is Female
    Click On Element       ${gender_rad_f}

Input Date Of Birth
    Input Text On Element   ${dob_txt}      ${_dateOfBirth}

Input Address
    Input Text On Element   ${address_txt}      ${_address}

Input City
    Input Text On Element   ${city_txt}     ${_city}

Input State
    Input Text On Element   ${state_txt}        ${_state}

Input PIN
    Input Text On Element   ${PIN_txt}      ${_PIN}

Input Phone Number
    Input Text On Element   ${phone_txt}        ${_phone}

Input Email
    Email Random
    Input Text On Element   ${email_txt}        ${_email}

Input Password
    Input Text On Element   ${password_txt}     ${_password}

Click On Submit Button
    Click On Element    ${submit_btn}

Click On Reset Button
    Click On Element    ${reset_btn}

Verify Add Customer Is Success
    Verify That Action Is Correctly     ${addCustomer_message}   ${_addCustomer_success}

