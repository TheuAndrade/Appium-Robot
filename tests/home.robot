*** Settings ***

Library    AppiumLibrary

*** Variables ***
${apkPath}    C://QAx//projects//yodapp-robot//app//yodapp-beta.apk
${startButton}    QAX


*** Test Cases ***

Deve abrir a tela principal

    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${apkPath}
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    
    Wait Until Page Contains    Yodapp    
    Wait Until Page Contains    Mobile Training     
    Wait Until Page Contains    by Papito!

    Close Application

Que eu navego ate a pagina principal

    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${apkPath}
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    

    Wait Until Page Contains     ${startButton}    10  

    Click Text                   ${startButton}    

    Wait Until Page Contains    Clique em Botões    10

    Close Application