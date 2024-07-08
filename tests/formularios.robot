*** Settings ***
Resource   ../resources/base.resource


*** Test Cases ***


Cadastrar Email
    Starting Session
    Go to main page
    Navegate to     Formulários
    Sleep    2
    Go to item     Cadastro    Crie sua conta 
   
    #Validação do scenario
    Input Text    //android.widget.EditText[@resource-id="com.qaxperience.yodapp:id/etUsername"]    Usuario
    Input Text    //android.widget.EditText[@resource-id="com.qaxperience.yodapp:id/etEmail"]    teste@email.com    
    Input Text    //android.widget.EditText[@resource-id="com.qaxperience.yodapp:id/etPassword"]    senhaForte
    Click Element    //android.widget.TextView[@resource-id="android:id/text1"]
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text    Jedi
    Click Text    CADASTRAR
    Page Should Contain Text    Tudo certo, boas vindas ao Yodapp!    

    Close Session 


Entrar com email não cadastrado 
    Starting Session
    Go to main page
    Navegate to     Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?
   
    #Validação do scenario
    Input Text    //android.widget.EditText[@resource-id="com.qaxperience.yodapp:id/etEmail"]    teste@email.com    
    Input Text    //android.widget.EditText[@resource-id="com.qaxperience.yodapp:id/etPassword"]    senhaForte
    Click Text    ENTRAR
    Page Should Contain Text    Oops! Credenciais incorretas.    

    Close Session 

Cadastrar uma conta sem dados 
    Starting Session
    Go to main page
    Navegate to     Formulários
    Sleep    2
    Go to item     Cadastro    Crie sua conta
   
    #Validação do scenario
    Click Text    CADASTRAR
    Page Should Contain Text    Seu nome você deve informar!   

    Close Session 