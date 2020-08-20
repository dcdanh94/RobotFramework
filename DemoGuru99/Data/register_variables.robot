*** Settings ***
Library  FakerLibrary  WITH NAME  faker

*** Variables ***
${email_error_empty}    Email ID must not be blank

*** Keywords ***
Email Random
    ${email} =  faker.email
    Set Suite Variable    ${email}
    Log To Console  email=${email}   STDERR


