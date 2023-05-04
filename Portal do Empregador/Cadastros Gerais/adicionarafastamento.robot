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
${BTN_AFASTAMENTO}                      xpath=//span[@class='fonte-navbar-parceiro'][contains(.,'Afastamento')]
${ADICIONAR}                            xpath=//a[@id="introjs_add"]
${SELECIONE_O_MOTIVO}                   xpath=//*[@id="ListaAfastamentos"]/option[15]
# O SELECIONE_O_MOTIVO ESCOLHER A NUMERAÇÃO DE [2] ATÉ O [38]
${INICIO_DO_AFASTAMENTO}                xpath=//input[@id="DataInicio"]
${FIM_DO_AFASTAMENTO}                   xpath=//input[@id="DataFim"]
${SALVAR}                               xpath=//button[@id="introjs_save"]


*** Keywords ***
Acessar a pagina pontocertificado

    Open Browser                            url=${URL}      browser=${BROWSER}
    Maximize Browser Window

Clicar em Acessar

    Click Element                           ${BTN_ACESSAR}


Clicar em Entrar
   
    Click Element                           ${BTN_ENTRAR} 

Preencher campos

    Input Text                              ${input_email}      ROBERTO.TESTEPROD@PCS.COM               

    Input Text                              ${input_password}   123  

Clicar em Entrar2

    Click Element                           ${BTN_ENTRAR2}


Clicar em Cadastros Gerais 

    Click Element                            ${CADASTRO_GERAIS}
    Sleep                                    5s
Clicar em Cargos e Funções

    Click Element                           ${BTN_AFASTAMENTO}
    Sleep                                   5s
Clicar em Adicionar

    Click Element                           ${ADICIONAR}
Afastamento

    Click Element                           ${SELECIONE_O_MOTIVO}
    Sleep                                   5s

Inicio do Afastamento 

    Input Text                              ${INICIO_DO_AFASTAMENTO}            27/04/2023

Fim do Afastamento 

    Input Text                             ${FIM_DO_AFASTAMENTO}                27/05/2023   
Clicar em SALVAR

    Click Element                          ${SALVAR} 

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastros Gerais 
    Clicar em Cargos e Funções
    Clicar em Adicionar
    Afastamento
    Inicio do Afastamento
    Fim do Afastamento
    #Clicar em SALVAR


