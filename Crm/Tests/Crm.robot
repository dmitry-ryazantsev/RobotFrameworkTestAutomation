*** Settings ***
Documentation       Basic info about the whole suite
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${VALID_LOGIN_EMAIL}         foo@gmail.com
${VALID_LOGIN_PASSWORD}      MyPassword!

*** Test Cases ***
Home page should load
    [Documentation]                Test the home page
    [Tags]                         1001    Smoke    Home
    CrmApp.Go To "Home" Page

Should be able to login with valid credentials
    [Documentation]                Test the login
    [Tags]                         1002    Smoke    Login
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}

Should be able to log out
    [Documentation]                Test the logout
    [Tags]                         1004    Smoke    Logout
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]                Test adding a new customer
    [Tags]                         1006    Smoke    Customers
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out
