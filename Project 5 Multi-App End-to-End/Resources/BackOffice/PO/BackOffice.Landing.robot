*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${LANDING_NAV_ELEMENT} =                  css=.navbar-brand

*** Keywords ***
Navigate To
    Go To                                 ${BACK_OFFICE_URL}

Verify Page Loaded
    Wait Until Page Contains Element      ${LANDING_NAV_ELEMENT}
