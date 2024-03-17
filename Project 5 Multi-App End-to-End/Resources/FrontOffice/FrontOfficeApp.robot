*** Settings ***
Resource            ./PO/FrontOffice.Landing.robot
Resource            ./PO/FrontOffice.Team.robot
Resource            ./PO/FrontOffice.TopNav.robot

*** Keywords ***
Go To Landing Page
    FrontOffice.Landing.Navigate To
    FrontOffice.Landing.Verify Page Loaded
    
Navigate To "Team" Section
    FrontOffice.TopNav.Click "Team" Link
    FrontOffice.Team.Verify Page Loaded

Validate "Team" Page
    FrontOffice.Team.Validate Page Contents