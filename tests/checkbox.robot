*** Settings ***
Resource   ../resources/base.resource


*** Test Cases ***

Deve marcar as techs que usam Appium
    Starting Session
    Go to main page
    Navegate to     Check e Radio
    Go to item     Checkbox    Marque as techs que usam Appium
   
    #Validação do scenario
    @{techs}    Create List    Java    Python    Ruby    Javascript    C#    Robot Framework
    FOR  ${tech}  IN  @{techs}
    Check box text equal    xpath=//android.widget.CheckBox[@resource-id="com.qaxperience.yodapp:id/checkboxButton" and @text="${tech} "]
    
    END
    
    Close Session 


Deve marcar sua stack favorita 
    Starting Session
    Go to main page
    Navegate to     Check e Radio
    Go to item     Botões de radio    Escolha sua linguagem preferida 
   
    #Validação do scenario
    ${xpath}    Set Variable    //android.widget.RadioButton[@resource-id="com.qaxperience.yodapp:id/radioButton" and @text="Python "]
    Wait Until Element Is Visible    ${xpath}
    Click Element    ${xpath}
    
    Close Session 
