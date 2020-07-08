*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AUTOMATION URL}      https://www.ultimateqa.com/automation/

*** Test Cases ***
PurchaseFakeTest
    Open browser    ${AUTOMATION URL}  chrome
    Home Page Should Be Open
    Maximize Browser Window
    Go To Fake Pricing Page
    Capture page screenshot
    Click element    xpath://*[@id="et-boc"]/div/div/div[1]/div[2]/div[2]/div/div/div/div[4]/a
    [Teardown]    Close Browser

*** Keywords ***
Home Page Should Be Open
    Title Should Be    Automation Practice - Ultimate QA

Go To Fake Pricing Page
    Click Link  xpath://*[@id="et-boc"]/div/div/div[2]/div/div[1]/div/div/div/div/ul/li[3]/a