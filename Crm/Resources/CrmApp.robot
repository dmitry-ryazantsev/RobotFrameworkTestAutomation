*** Settings ***
Resource    ./PO/AddCustomer.robot
Resource    ./PO/Customers.robot
Resource    ./PO/Home.robot
Resource    ./PO/LoggedOut.robot
Resource    ./PO/SignIn.robot
Resource    ./PO/TopNav.robot

*** Variables ***

*** Keywords ***
Go To "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded
    
Login With Valid Credentials
    [Arguments]    ${EMAIL}        ${PASSWORD}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials        ${EMAIL}        ${PASSWORD}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click "Add Customer" Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded