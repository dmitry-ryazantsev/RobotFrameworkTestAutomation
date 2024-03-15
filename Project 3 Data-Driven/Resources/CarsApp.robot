*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Test Multiple Login Scenarios
    [Arguments]  ${Credentials}
    Navigate to Sign In Page
    Attempt Login    ${Credentials}
    Verify Login Page Error Message    ${Credentials.ExpectedErrorMessage}

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}