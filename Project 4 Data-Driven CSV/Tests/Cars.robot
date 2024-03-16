*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  ../Resources/Common.robot
Resource  ../Resources/CarsApp.robot
Resource  ../Resources/DataManager.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Should see correct error messages with invalid logins
    ${InvalidLoginScenarios} =    DataManager.Get CSV Data    ${INVALID_CREDENTIALS_PATH_CSV}
    CarsApp.Login with Many Invalid Credentials    ${InvalidLoginScenarios}