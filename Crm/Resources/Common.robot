*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${BROWSER} =                       chrome

*** Keywords ***
Begin Web Test
    Set Selenium Timeout           10s
    Open Browser                   about:blank    ${BROWSER}

End Web Test
    Close All Browsers