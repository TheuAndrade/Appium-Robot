*** Settings ***
Resource   ../resources/base.resource


*** Test Cases ***

Deve realizar o clique simples
    Starting Session
    Go to main page
    Navegate to     Clique em Botões
    Go to item    Clique simples    Clique simples
    
    Wait Until Page Contains    CLIQUE SIMPLES    5
    Click Text    CLIQUE SIMPLES
    Wait Until Page Contains    Isso é um clique simples    3

    Close Session 

Deve realizar o clique longo
    Starting Session
    Go to main page
    Navegate to     Clique em Botões
    Go to item     Clique longo    Clique longo 
    
    Wait Until Page Contains    CLIQUE LONGO    5
       
    ${locator}    Set Variable    id=com.qaxperience.yodapp:id/long_click
    ${position}    Get Element Location    ${locator}
    Tap With Positions    1000    ${${position}[x], ${position}[y]} 

    Wait Until Page Contains    Isso é um clique longo    3

    Close Session 


