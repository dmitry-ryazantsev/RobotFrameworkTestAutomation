*** Settings ***
Resource            ../../Data/InputData.robot
Resource            ../../Resources/BackOffice/BackOfficeApp.robot
Resource            ../../Resources/Common/CommonWeb.robot
Resource            ../../Resources/FrontOffice/FrontOfficeApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
Should be able to access both sites
    [Documentation]        Both sites can be loaded
    [Tags]                 Smoke
    FrontOfficeApp.Go To Landing Page
    BackOfficeApp.Go To Landing Page

