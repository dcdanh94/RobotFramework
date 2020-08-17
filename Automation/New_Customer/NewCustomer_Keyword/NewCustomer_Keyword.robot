*** Settings ***
Resource  ../NewCustomer_Page/NewCustomer_Page.robot

*** Keywords ***
User Open NewCustomer Page
    Open NewCustomer Page

User Verify NewCustomer Page Is Displayed
    Verify NewCustomer Page Is Displayed

User Input Customer Name
    Input Customer Name

User Select Gender Is Female
    Select Gender Is Female

User Input Date Of Birth
    Input Date Of Birth

User Input Address
    Input Address

User Input City
    Input City

User Input State
    Input State

User Input PIN
    Input PIN

User Input Phone Number
    Input Phone Number

User Input Email
    Input Email

User Input Password
    Input Password

User Click On Submit Button
    Click On Submit Button

User Click On Reset Button
    Click On Reset Button

User Verify Add Customer Is Success
    Verify Add Customer Is Success
