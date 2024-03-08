*** Settings ***
Resource            ./PO/Landing.robot
Resource            ./PO/Team.robot
Resource            ./PO/TopNav.robot

*** Keywords ***
Go To Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded
    
Navigate To "Team" Section
    TopNav.Click "Team" Link
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents