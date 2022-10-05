*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that user is able to successfully Login to OrangeHRM
    [tags]  Smoke
    Open Browser  https://opensource-demo.orangehrmlive.com/  Chrome
    Wait Until Element Is Visible  css:input[placeholder="Username"]  timeout=5
    Input Text  css:input[placeholder="Username"]  Admin
    Input Password  css:input[placeholder="Password"]  admin123
    Click Element  xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Close Browser

Create New User
    [documentation]  This test case verifies that user is created
    [tags]  Smoke
    Open Browser  https://opensource-demo.orangehrmlive.com/  Chrome
    Wait Until Element Is Visible  css:input[placeholder="Username"]  timeout=5
    Input Text  css:input[placeholder="Username"]  Admin
    Input Password  css:input[placeholder="Password"]  admin123
    Click Element  xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Wait Until Element Is Visible  xpath://*[@id="app"]  timeout=5
*** Keywords ***
