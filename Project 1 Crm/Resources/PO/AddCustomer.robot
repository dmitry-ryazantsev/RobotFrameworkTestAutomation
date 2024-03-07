*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =          Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =         Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =         id=EmailAddress 
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =    id=FirstName 
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =     id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =          id=City 
${ADDCUSTOMER_STATE_DROPDOWN} =        id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIO} =          gender
${ADDCUSTOMER_PROMO_CHECKBOX} =        name=promos-name

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains      ${ADDCUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click "Submit" Button

Fill Customer Fields
    Input Text                     ${ADDCUSTOMER_EMAIL_TEXTBOX}               johndoe@gmail.com
    Input Text                     ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}          John
    Input Text                     ${ADDCUSTOMER_LAST_NAME_TEXTBOX}           Doe
    Input Text                     ${ADDCUSTOMER_CITY_TEXTBOX}                Anchorage
    Select From List By Value      ${ADDCUSTOMER_STATE_DROPDOWN}              AK
    Select Radio Button            ${ADDCUSTOMER_GENDER_RADIO}                male
    Select Checkbox                ${ADDCUSTOMER_PROMO_CHECKBOX}
      
Click "Submit" button
    Click Button                   ${ADDCUSTOMER_SUBMIT_BUTTON}

