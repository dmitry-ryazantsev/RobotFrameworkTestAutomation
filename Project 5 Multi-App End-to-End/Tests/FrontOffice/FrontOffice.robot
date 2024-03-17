*** Settings ***
Resource            ../../Data/InputData.robot
Resource            ../../Resources/Common/CommonWeb.robot
Resource            ../../Resources/FrontOffice/FrontOfficeApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]        "Team" page can be loaded
    [Tags]                 Smoke
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Navigate To "Team" Section

"Team" page should match requirements
    [Documentation]        "Team" page has the expected header text
    [Tags]                 Smoke
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Navigate To "Team" Section
    FrontOfficeApp.Validate "Team" Page