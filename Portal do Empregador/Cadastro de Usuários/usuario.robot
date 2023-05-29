*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL}                                  https://www.pontocertificado.com.br
${BROWSER}                              chrome
${BTN_ACESSAR}                          css=li > .btn
${BTN_ENTRAR}                           css=.col-sm-6:nth-child(2) .btn
${input_email}                          xpath=//input[@id='Email']
${input_password}                       xpath=//input[@id='Senha']
${BTN_ENTRAR2}                          css=.fourth
${RELATORIOS}                           css=#mnRelatorio > a
${CADASTRO_DE_USUARIOS}                 xpath=//*[@id="mnCadUsuarios"]/a/span
${USUARIOS}                             xpath=//*[@id="mnUsuarios"]/a/span
${ADICIONAR_USUARIO}                    xpath=//*[@id="content"]/div/div[2]/a
${EMAIL_USUARIO}                        css=#Usuario_Email
${PRIVILEGIO}                           xpath=//*[@id="Usuario_Privilegio"]/option[5] 
# NO PREVILÉGIO COLOCAR A NUMERAÇÃO DE 2 AO 5
${SALVAR}                               xpath=//button[@type='button'][contains(.,'Salvar')]


*** Keywords ***
Acessar a pagina pontocertificado

    Open Browser                                url=${URL}      browser=${BROWSER}
    Maximize Browser Window

Clicar em Acessar

    Click Element                               ${BTN_ACESSAR}


Clicar em Entrar
   
    Click Element                               ${BTN_ENTRAR} 

Preencher campos

    Input Text                                  ${input_email}      ROBERTO.TESTEPROD@PCS.COM               

    Input Text                                  ${input_password}   123  

Clicar em Entrar2

    Click Element                               ${BTN_ENTRAR2}


Clicar em Cadastro de Usuarios

    Click Element                                ${CADASTRO_DE_USUARIOS}

Clicar em Usuarios

    Click Element                                ${USUARIOS}
    Sleep                                        5s

Adicionar Usuario     

    Click Element                                ${ADICIONAR_USUARIO}
    Sleep                                        5s
Inserir E-mail 

    Input Text                                   ${EMAIL_USUARIO}        testautomacao@test.com

Privilégio

    Click Element                                ${PRIVILEGIO}
    
Clicar em SALVAR

    Click Element                                ${SALVAR} 

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastro de Usuarios
    Clicar em Usuarios
    Adicionar Usuario
    Inserir E-mail
    Privilégio
    #Clicar em SALVAR