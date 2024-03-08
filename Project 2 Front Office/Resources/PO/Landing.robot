*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${LANDING_NAV_ELEMENT} =                  css=#mainNav
${URL} =                                  https://automationplayground.com/front-office/

*** Keywords ***
Navigate To
    Go To                                 ${URL}

Verify Page Loaded
    Wait Until Page Contains Element      ${LANDING_NAV_ELEMENT}
