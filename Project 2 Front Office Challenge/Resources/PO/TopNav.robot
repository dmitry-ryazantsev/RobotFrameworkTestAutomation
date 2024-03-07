*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK} =                 Team

*** Keywords ***
Click "Team" Link
    Click Link                        ${TOPNAV_TEAM_LINK}