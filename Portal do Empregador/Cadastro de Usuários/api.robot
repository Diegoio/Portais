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
${API}                                  xpath=//*[@id="mnUsuarioApi"]/a/span
${ADICIONAR}                            xpath=//*[@id="content"]/div[1]/div[2]/a
${EMAIL_USUARIO}                        xpath=//input[@id="usuario"]
${SENHA}                                xpath=//input[@id="Senha"]
${CONFIRMAR_SENHA}                      xpath=//input[@id="RepeteSenha"]
${SALVAR}                               xpath=//button[@id="btnSubmit"]


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

    Click Element                               ${CADASTRO_DE_USUARIOS}
    Sleep                                       5s
Clicar em API

    Click Element                                ${API}

Clicar em ADICIONAR

    Click Element                                ${ADICIONAR}

Inserir E-MAIL

    Input Text                                   ${EMAIL_USUARIO}        test@testapi.com 

Inserir Senha

    Input Text                                   ${SENHA}                123456

Confirmar Senha

    Input Text                                    ${CONFIRMAR_SENHA}            123456
    
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
    Clicar em API
    Clicar em ADICIONAR
    Inserir E-MAIL
    Inserir Senha
    Confirmar Senha
    #Clicar em SALVAR