*** Settings ***
# Library  SeleniumLibrary
Resource  myDriver.robot


*** Variables ***
${googleUrl}  https://www.google.com

*** Test Cases ***
Test Open google with chrome
    Open Browser with chrome  ${googleUrl}
    Title Should Be  Google    
    Close All Browsers

Test Open google with edge
    Open Browser with edge  ${googleUrl}
    Title Should Be  Google    
    Close All Browsers

Test Open google with firefox
    Open Browser with firefox  ${googleUrl}
    Title Should Be  Google    
    Close All Browsers
