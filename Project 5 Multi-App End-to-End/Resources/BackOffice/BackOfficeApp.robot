*** Settings ***
Resource            ./PO/BackOffice.Landing.robot
Resource            ./PO/BackOffice.TopNav.robot

*** Keywords ***
Go To Landing Page
    BackOffice.Landing.Navigate To
    BackOffice.Landing.Verify Page Loaded