*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =                    Our Amazing Team

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains              ${TEAM_HEADER_LABEL}