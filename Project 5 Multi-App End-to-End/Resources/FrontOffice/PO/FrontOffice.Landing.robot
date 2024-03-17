*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${LANDING_NAV_ELEMENT} =                  css=#mainNav

*** Keywords ***
Navigate To
    Go To                                 ${FRONT_OFFICE_URL}

Verify Page Loaded
    Wait Until Page Contains Element      ${LANDING_NAV_ELEMENT}
