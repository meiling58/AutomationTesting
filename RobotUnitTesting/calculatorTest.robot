*** Settings ***
Documentation  Testing the add and subtract funtion
Library  calculator.py

*** Variables ***


*** Test Cases ***
Test add function    
    ${result}=  Add Function  5  3
    Should Be Equal As Integers  ${result}  8


Test subtract function    
    ${result}=   Subtract Function  5  3
    Should Be Equal As Integers  ${result}  2


*** Keywords ***
Add Function
    [Arguments]  ${a}  ${b}
    ${a}=  Convert To Integer  ${a}
    ${b}=  Convert To Integer  ${b}
    ${result}=  calculator.Add  ${a}  ${b}
    RETURN  ${result}

 Subtract Function
    [Arguments]  ${a}  ${b}
    ${a}=  Convert To Integer  ${a}
    ${b}=  Convert To Integer  ${b}
    ${result}=  calculator.Subtract  ${a}  ${b}
    RETURN  ${result}   

