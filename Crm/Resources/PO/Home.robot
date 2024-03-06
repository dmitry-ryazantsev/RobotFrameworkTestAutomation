*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =          Customers Are Priority One
${URL} =                        https://automationplayground.com/crm/

*** Keywords ***
Navigate To
    Go To                       ${URL}
Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_LABEL}