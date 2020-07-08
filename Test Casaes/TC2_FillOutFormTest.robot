*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AUTOMATION URL}      https://www.ultimateqa.com/automation/

*** Test Cases ***
FillOutFormsTest
    Open browser    ${AUTOMATION URL}  chrome
    Home Page Should Be Open
    Maximize Browser Window
    Go To Fill Out Form Page
    Capture page screenshot     \screen.png
    Input text  id:et_pb_contact_name_0    Thulani
    Input text  id:et_pb_contact_message_0   This is a test message.
    Input text  id:et_pb_contact_name_1   Gawie
    Input text  id:et_pb_contact_message_1   This is another test message.

    Click element    xpath://*[@id="et_pb_contact_form_1"]/div[2]/form/div/button
    Click element    xpath://*[@id="et_pb_contact_form_0"]/div[2]/form/div/button
    [Teardown]    Close Browser

*** Keywords ***
Home Page Should Be Open
    Title Should Be    Automation Practice - Ultimate QA

Go To Fill Out Form Page
    Click Link  xpath://*[@id="et-boc"]/div/div/div[2]/div/div[1]/div/div/div/div/ul/li[4]/a
