*** Settings ***
Library  FakerLibrary  WITH NAME  faker

*** Keywords ***
Email Random
    ${_email} =  faker.email
    Set Suite Variable    ${_email}
    Log To Console  _email=${_email}   STDERR

*** Variables ***
#Verify NewCustomer Page is displayed
${addCustomer_title}    Add New Customer
${_customerName}        CustomerE
${_dateOfBirth}         02/10/2020
${_address}             123 linh trung
${_city}                hcm
${_state}               Cali
${_PIN}                 123456
${_phone}               0999999999
#${_email}               ${email}
${_password}            123456
${_addCustomer_success}      Customer Registered Successfully!!!