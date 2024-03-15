*** Settings ***
Library  SeleniumLibrary
Resource  ../Common.robot

*** Variables ***
${SIGN_IN_EMAIL} =          xpath=//input[@ng-model='credentials.email']
${SIGN_IN_PASSWORD} =       xpath=//input[@ng-model='credentials.password']
${LOGIN_SUBMIT_BUTTON} =    Log In

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    Go To  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    Run Keyword Unless  '${Credentials.Email}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials.Email}
    Run Keyword Unless  '${Credentials.Password}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials.Password}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage}

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN_IN_PASSWORD}