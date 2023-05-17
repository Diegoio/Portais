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
${CADASTRO_GERAIS}                      css=#mnCadastrosGerais .menu-item-parent
${BTN_ATIVIDADES}                       xpath=(//span[@class='fonte-navbar-parceiro'][contains(.,'Atividades')])[1]
${ADICIONAR}                            xpath=//a[contains(@class,'btn btn-success btn-lg header-btn')]
${DESCRICAO_DA_ATIVIDADE}               xpath=//input[@id="Descricao"]
${NOME_DA_ATIVIDADE}                    xpath=//input[@id="alteraStatus"]
${BTN_ADICIONAR}                        xpath=//a[@id="btnAddStatus"]
${SALVAR}                               xpath=//button[@id="introjs_save"]


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


Clicar em Cadastros Gerais 

    Click Element                                ${CADASTRO_GERAIS}
    Sleep                                        5s
Clicar em Atividades

    Click Element                               ${BTN_ATIVIDADES}
    Sleep                                       5s
Clicar em Adicionar

    Click Element                               ${ADICIONAR}

Descrição da Atividade 

    Input Text                                  ${DESCRICAO_DA_ATIVIDADE}        aaaaaaaaaaaaaaaaa

Nome da Atividade

    Input Text                                  ${NOME_DA_ATIVIDADE}                bbbbbbbbbbbbb

Adicionar

    Click Element                                ${BTN_ADICIONAR}

Clicar em SALVAR

    Click Element                              ${SALVAR} 

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastros Gerais 
    Clicar em Atividades
    Clicar em Adicionar
    Descrição da Atividade 
    Nome da Atividade
    Adicionar
    #Clicar em SALVAR