*** Settings ***
Library           FakerLibrary    locale=en_US

*** Test Cases ***
Generate Fake Data Example1
    [Documentation]    Robot Framework Faker allows users to generate random test data by using Faker's random test data generation keywords. Using Faker, users avoid using static test data for testing and improve the test to simulate real world data.
    [Tags]    Faker
#    Comment    Generate Address
    text = ${address}=    Address

    Log To Console  text1   STDERR
