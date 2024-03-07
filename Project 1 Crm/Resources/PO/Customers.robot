*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${CUSTOMERS_ADD_CUSTOMER_LINK} =           id=new-customer
${CUSTOMERS_HEADER_LABEL} =                Our Happy Customers
${CUSTOMERS_CUSTOMER_SUCCESS_LABEL} =      Success! New customer added


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains               ${CUSTOMERS_HEADER_LABEL}

Click "Add Customer" Link
    Click Link                             ${CUSTOMERS_ADD_CUSTOMER_LINK}
    
Verify Customer Added Successfully
    Wait Until Page Contains               ${CUSTOMERS_CUSTOMER_SUCCESS_LABEL}