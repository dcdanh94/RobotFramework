*** Settings ***
Library  FakerLibrary  WITH NAME  faker

*** Test Cases ***
Email random
    ${email} =  faker.email
    Log To Console  text=${email}   STDERR