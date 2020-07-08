*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AUTOMATION URL}      https://www.ultimateqa.com/automation/

*** Test Cases ***
LoginTest
    Open browser    ${AUTOMATION URL}   chrome  firefox
    Home Page Should Be Open
    Maximize Browser Window
    Capture page screenshot     \home\thulanig\PersonalDev\Python\Testing\Sreenshots\TC1screen.png
    Go To Login Page
    Input text  id:user[email]    thulani@example.com
    Input text  id:user[password]   P@ssword123
    Click element    xpath://*[@id="sign_in_b1a165b5a8"]/div[4]/input
    [Teardown]    Close Browser

*** Keywords ***
Home Page Should Be Open
    Title Should Be    Automation Practice - Ultimate QA

Go To Login Page
    Click Link  xpath://*[@id="et-boc"]/div/div/div[2]/div/div[1]/div/div/div/div/ul/li[6]/a