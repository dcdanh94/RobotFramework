*** Settings ***
Resource  ../NewCustomer_Keyword/NewCustomer_Keyword.robot
Force Tags  Register    All
#Force Tags  Login       All

*** Test Cases ***
Add NewCustomer Is Success
    User Open NewCustomer Page
    User Verify NewCustomer Page Is Displayed
    User Input Customer Name
    User Select Gender Is Female
    User Input Date Of Birth
    User Input Address
    User Input City
    User Input State
    User Input PIN
    User Input Phone Number
    User Input Email
    User Input Password
    User Click On Submit Button
    User Verify Add Customer Is Success

