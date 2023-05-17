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
${BTN_DETALHES}                         xpath=//span[@class='fonte-navbar-parceiro'][contains(.,'Detalhes das Atividades')]
${ADICIONAR}                            xpath=//a[@id="introjs_add"]
${DESCRICAO_DO_DETALHE}                 xpath=//input[@id='Descricao']
${BTN_TEXTO}                            xpath=//div[@class='btn-texto fa fa-font']
${input_texto}                          xpath=//input[@id='text_new_1']
${BTN_NUMERO}                           xpath=//a[@id='btnAddNumero']
${input_numero}                         xpath=//input[@id='text_new_2']
${BTN_HORA}                             xpath=//div[@class='btn-texto fa fa-clock-o']
${input_hora}                           xpath=//input[@id='text_new_3']
${BTN_COMBO}                            xpath=//div[@class='btn-texto fa fa-list']
${input_combo}                          xpath=//input[@id='text_new_4']
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
Clicar em Detalhes das Atividades

    Click Element                               ${BTN_DETALHES}
    Sleep                                       5s
Clicar em Adicionar

    Click Element                               ${ADICIONAR}

Descrição do Detalhe 

    Input Text                                  ${DESCRICAO_DO_DETALHE}        aaaaaaaaaaaaaaaaa

Adiciona Texto

    Click Element                               ${BTN_TEXTO}

Insere o Texto

    Input Text                                   ${input_texto}            bbbbbbbbbbbb

Adiciona Numero 

    Click Element                                ${BTN_NUMERO}

Insere Numero

    Input Text                                   ${input_numero}            22222222

Adiciona Hora 

    Click Element                                ${BTN_HORA}

Insere Hora

    Input Text                                    ${input_hora}        0000000

Adiciona Combo 

    Click Element                                  ${BTN_COMBO}

Insere Combo 

    Input Text                                     ${input_combo}            ccccccccc

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
    Clicar em Detalhes das Atividades
    Clicar em Adicionar
    Descrição do Detalhe
    Adiciona Texto
    Insere o Texto
    Adiciona Numero
    Insere Numero
    Adiciona Hora 
    Insere Hora
    Adiciona Combo
    Insere Combo 
    #Clicar em SALVAR