*** Settings ***
Documentation    First Robot Framework Automation testing

*** Variables ***
${Hello_World}  Hello World
${true_helloWorld}  Hello World
${fail_hellowWorld}  hello world

*** test cases ***
Hello World is true
    ${result}  Hello World  ${true_helloWorld}
    Should Be True  $result

Hello World is not true
    [Documentation]  Hello world is not match, faiure testing
    ${result}  Hello World  ${fail_hellowWorld}
    Should Not Be True  $result

*** Keywords ***
Hello World
    [Documentation]  Return true if the argument is 'Hello World'
    [Arguments]  ${testData}    
    ${result}=  Run Keyword And Return Status  Should be Equal  ${testData}  ${Hello_World}
    RETURN  ${result}  
    