*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =                    Welcome To Our Studio!
${URL} =                                  https://automationplayground.com/front-office/

*** Keywords ***
Navigate To
    Go To                                 ${URL}

Verify Page Loaded
    Wait Until Page Contains              ${HOME_HEADER_LABEL}      