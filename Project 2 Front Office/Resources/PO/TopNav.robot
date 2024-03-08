*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK} =                 css=.navbar-nav li:nth-child(5)

*** Keywords ***
Click "Team" Link
    Click Element                     ${TOPNAV_TEAM_LINK}