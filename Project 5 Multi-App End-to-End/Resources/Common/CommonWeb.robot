*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Begin Web Test
    Set Selenium Timeout             10s
    Open Browser                     about:blank        ${BROWSER}
    Maximize Browser Window

End Web Test
    Close All Browsers