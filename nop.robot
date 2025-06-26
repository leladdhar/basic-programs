*** Settings ***
Library  SeleniumLibrary
Library  DateTime

#
Test Setup   Open Login Page
Test Teardown   Close My Browsers

*** Variables ***
${URL}  https://www.automationexercise.com/                                              #https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}           chrome
${expected_text}
${username}  Admin
${Valid_username}  Admin
${Invalid_username}  qwerty
${Invalid_password}  Admin12345
${password}  Admin123
${Login_submit_Button}  xpath: //button[@type="submit"]
${Empty}
*** Keywords ***

Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Set Selenium Implicit Wait   5
    Set Selenium speed  1

Close My Browsers
    Close All Browsers

Click Submit Button
    Wait Until Page Contains Element    ${Login_submit_Button}
    Click Element  ${Login_submit_Button}


Input Username
    [Arguments]    ${username}
    Input Text    name : username    Admin

Input Password
    [Arguments]    ${password}
    Input Text    name : password    Admin12345

#Input Username
#    [Arguments]    ${username}  ${Valid_username}
#    Input Text    ${username}   ${Valid_username}
#
#Input Password
#    [Arguments]    ${password}  ${Valid_password}
#    Input Text    ${password}  ${Valid_password}
#
#
#Assertions
#    Page Should Contain   Dashboard
#
#Error Assertion
#    Page Should Contain     Invalid credentials

#*** Test Cases ***
#Example Test
#    [Documentation]  Demonstrating Try Catch
#    ${result}  Run Keyword And Ignore Error  Some Keyword That Might Fail
#    Run Keyword If  '${result}' == 'FAIL'  Log  An error occurred: ${result}
Assertions
    [Arguments]    ${message}
    ${result}  Run Keyword And Return Status   Page Should Contain   ${message}
    Run Keyword If  '${result}' == 'FAIL'  Log  An error occurred: ${result}


*** Test Cases ***
TC001 _ Valid Login Test
    [Tags]  TC001
    Wait Until Page Contains Element   name : username
    Input Text    name : username    Admin
    Input Text    name : password    Admin123
    Click Submit Button
    Assertions  Dashboard



##
#TC002 _ Test invalid login with wrong password
##    Open Login Page
#    sleep  2
#    Wait Until Page Contains Element   name : username
#    Input Text    name : username    Admin
#    sleep  2
#    Wait Until Page Contains Element   name : password
#    Input Text    name : password    Admin12345
#    sleep  2
#    Click Submit Button
#    sleep  2
#    Assertions  Invalid credentials
#    sleep  2

#
#TC003 _ Test invalid login with wrong username
#    sleep  2
#    Wait Until Page Contains Element   name : username
#    Input Text    name : username    Admin123
#    sleep  2
#    Wait Until Page Contains Element   name : password
#    Input Text    name : password    Admin123
#    sleep  2
#    Click Submit Button
#    sleep  2
#    Error Assertion
#
#TC004 _ Test login with empty username
#    sleep  2
#    Wait Until Page Contains Element   name : username
#    Input Text    name : username  ${Empty}
#    sleep  2
#    Wait Until Page Contains Element   name : password
#    Input Text    name : password    Admin123
#    sleep  2
#    Click Submit Button
#    sleep  2
##    Error Assertion
#
#TC005 _ Test login with empty password
#    sleep  2
#    Wait Until Page Contains Element   name : username
#    Input Text    name : username    Admin123
#    sleep  2
#    Wait Until Page Contains Element   name : password
#    Input Text    name : password  ${Empty}
#    sleep  2
#    Click Submit Button
##    sleep  2
##    Error Assertion
#
#
#TC006 _ Test login with both empty username and password
#
#    Click Submit Button
#    sleep  2
##    Error Assertion
#
#TC007 _ Test login with special characters in username
#    sleep  2
#    Wait Until Page Contains Element   name : username
#    Input Text    name : username    Admin#@$
#    sleep  2
#    Wait Until Page Contains Element   name : password
#    Input Text    name : password  Admin123
#    sleep  2
#    Click Submit Button
#
#TC008 _ Test login with special characters in password
#    sleep  2
#    Wait Until Page Contains Element   name : username
#    Input Text    name : username    Admin
#    sleep  2
#    Wait Until Page Contains Element   name : password
#    Input Text    name : password  Admin@#$%
#    sleep  2
#    Click Submit Button



