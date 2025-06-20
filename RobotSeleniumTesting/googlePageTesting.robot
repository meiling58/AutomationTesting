*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${googleUrl}  https://www.google.com

*** Test Cases ***
Test Open google with chrome
    ${driverpath}=    Evaluate    webdriver_manager.chrome.ChromeDriverManager().install()    modules=webdriver_manager.chrome
	Open Browser  ${googleUrl}  Chrome 	executable_path=${driverpath}
    Title Should Be  Google    
    Close All Browsers

Test Open google with edge
    ${driverpath}=    Evaluate    webdriver_manager.microsoft.EdgeChromiumDriverManager().install()    modules=webdriver_manager.microsoft
	Open Browser  ${googleUrl}  Edge 	executable_path=${driverpath}
    Title Should Be  Google    
    Close All Browsers

Test Open google with firefox
    ${driverpath}=    Evaluate    webdriver_manager.firefox.GeckoDriverManager().install()    modules=webdriver_manager.firefox
	Open Browser  ${googleUrl}  firefox 	executable_path=${driverpath}
    Title Should Be  Google    
    Close All Browsers
