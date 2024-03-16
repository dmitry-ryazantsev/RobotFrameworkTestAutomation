*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Login with Many Invalid Credentials
    [Arguments]    ${InvalidLoginScenarios}
    FOR    ${LoginScenario}    IN    @{InvalidLoginScenarios}
        Navigate to Sign In Page
        Attempt Login    ${LoginScenario}
        Verify Login Page Error Message    ${LoginScenario}
    END

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}