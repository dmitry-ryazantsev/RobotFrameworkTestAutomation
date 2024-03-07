*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${LOGGEDOUT_HEADER_LABEL} =         Signed Out

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains        ${LOGGEDOUT_HEADER_LABEL}