*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  profile/secure/login
${INVALID_CREDENTIALS_PATH_CSV} =  Project 4 Data-Driven CSV/Data/Users.csv

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close All Browsers