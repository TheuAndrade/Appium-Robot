*** Settings ***

Library     AppiumLibrary

*** Variables ***
${apkPath}    C://QAx//projects//yodapp-robot//app//yodapp-beta.apk
${startButton}    QAX

*** Keywords ***
Starting Session 
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${apkPath}
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    
Go to main page
    Wait Until Page Contains     ${startButton}    10  
    Click Text                   ${startButton} 

Navegate to
    [Arguments]    ${item_text}

    ${hamburguerMenu}   Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${hamburguerMenu}    5
    Click Element                    ${hamburguerMenu}

    ${menu_item}   Set Variable    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/tvItemTitle" and @text="${item_text}"]

    Wait Until Element Is Visible     ${menu_item} 
    Click Element             ${menu_item} 
    
Go to item 
    [Arguments]    ${item_text}    ${validation_value}
    Wait Until Page Contains    ${item_text}    5
    Click Text                  ${item_text}
    Wait Until Page Contains    ${validation_value}

Check box text equal
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${value}
    Click Element     ${value}
    
Close Session 
    Close Application
