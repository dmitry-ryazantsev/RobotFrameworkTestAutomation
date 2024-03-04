*** Settings ***
Documentation   Basic info about the whole suite
Library         SeleniumLibrary   

*** Test Cases ***
Should be able to add new customer
    [Documentation]                Basic info about the test
    [Tags]                         1006    Smoke    Contacts
    
    Log                            Starting the test case
    Open Browser                   https://automationplayground.com/crm/    chrome
    Page Should Contain            Customers Are Priority One
    
    Click Link                     id=SignIn
    Page Should Contain            Login
    
    Input Text                     name=email-name        foo@gmail.com
    Input Text                     name=password-name     password
    Click Button                   css=#submit-id
    Page Should Contain            Our Happy Customers

    Click Link                     id=new-customer
    Page Should Contain            Add Customer

    Input Text                     id=EmailAddress        johndoe@gmail.com
    Input Text                     id=FirstName           John
    Input Text                     id=LastName            Doe
    Input Text                     id=City                Anchorage
    Select From List By Value      id=StateOrRegion       AK
    Select Radio Button            gender                 male
    Select Checkbox                name=promos-name
    Click Button                   Submit
    Page Should Contain            Success! New customer added

    Close Browser
