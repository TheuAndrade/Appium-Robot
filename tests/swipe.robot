*** Settings ***
Resource   ../resources/base.resource


*** Test Cases ***


Delete Mandalorian
    Starting Session
    Go to main page
    Navegate to     Star Wars 
    Sleep    2
    Go to item     Lista    Mandaloriano 
   
    #Validação do scenario
   
    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@mando"]/../../../*[contains(@resource-id,"indicator")]

    ${start_x}    Set Variable    ${positions}[x]
    ${start_y}    Set Variable    ${positions}[y]
    ${offset_x}   Evaluate        ${positions}[x] - 650
    ${offset_y}   Set Variable    ${positions}[y]


    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    1000

    Sleep    2


    Close Session 
