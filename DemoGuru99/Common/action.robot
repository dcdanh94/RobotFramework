*** Settings ***
Library  Selenium2Library

*** Keywords ***
Get Text On Element
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Scroll Element Into View    ${locator}
    ${return_text} =    Get Text    ${locator}
    [Return]  ${return_text}

Verify That Action Is Correctly
    [Arguments]  ${locator}    ${expected_result}
    Scroll Element Into View    ${locator}
    ${actual_result} =    Get Text On Element    ${locator}
    #Log     actual result = ${actual_result}
    Should Be Equal    ${actual_result}    ${expected_result}
    Log To Console  text=${actual_result}   STDERR

Get Attribute On Element
    [Arguments]  ${locator}    ${attr}
    Wait Until Element Is Visible    ${locator}
    ${text}    Get Element Attribute    ${locator}    ${attr}
    [Return]  ${text}

Input Text On Element
    [Arguments]  ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}
    Scroll Element Into View    ${locator}
    Input Text    ${locator}    ${text}

Click On Element
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Click On Link
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Link      ${locator}

Clear Text On Element
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Scroll Element Into View    ${locator}
    Clear Element Text  ${locator}

Verify Element Contain Text
    [Arguments]  ${locator}     ${expected_result}
    Wait Until Element Is Visible    ${locator}
    Scroll Element Into View    ${locator}
    ${text} =    Get Text On Element    ${locator}
    Log To Console  text=${text}   STDERR
    Should Contain    ${text}      ${expected_result}
    [Return]  ${text}


