*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${SIGNIN_HEADER_LABEL} =          Login
${SIGNIN_EMAIL_TEXTBOX} =         name=email-name
${SIGNIN_PASSWORD_TEXTBOX} =      name=password-name
${SIGNIN_SUBMIT_BUTTON} =         css=#submit-id

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains      ${SIGNIN_HEADER_LABEL}
    
Login With Valid Credentials
    [Arguments]    ${EMAIL}        ${PASSWORD}
    Fill "Email" Field            ${EMAIL}
    Fill "Password" Field         ${PASSWORD}
    Click "Submit" button
    
Fill "Email" Field
    [Arguments]    ${EMAIL}
    Input Text                    ${SIGNIN_EMAIL_TEXTBOX}       ${EMAIL} 
Fill "Password" Field
    [Arguments]    ${PASSWORD}
    Input Text                    ${SIGNIN_PASSWORD_TEXTBOX}    ${PASSWORD}
Click "Submit" button
    Click Button                  ${SIGNIN_SUBMIT_BUTTON}