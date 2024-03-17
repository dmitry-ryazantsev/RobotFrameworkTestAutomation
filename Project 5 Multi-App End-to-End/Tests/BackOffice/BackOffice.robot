*** Settings ***
Resource            ../../Data/InputData.robot
Resource            ../../Resources/BackOffice/BackOfficeApp.robot
Resource            ../../Resources/Common/CommonWeb.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]        "Landing" page can be loaded
    [Tags]                 Smoke
    BackOfficeApp.Go To Landing Page

