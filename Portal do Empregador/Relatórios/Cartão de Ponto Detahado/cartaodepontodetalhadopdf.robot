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
${CARTAO_DE_PONTO_DETALHADO}            xpath=//*[@id="mnCartaoPontoDetalhado"]/a
${FUNCIONARIOS}                         xpath=//*[@id="Trabalhadores"]/option[78]
${PDF}                                  xpath=//*[@id="form0"]/fieldset[2]/div/label[3]/i
${DATA_INICIO}                          xpath=//input[@id="inicioBusca"]
${DATA_FIM}                             xpath=//input[@id="fimBusca"]
${GERAR}                                xpath=//*[@id="form0"]/footer/button
${BAIXAR}                               xpath=//*[@id="resultadoMarcacoes"]/footer/div

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


Clicar em Relatorios 

    Click Element                                ${RELATORIOS}
    Sleep                                        5s

Clicar em Cartão de Ponto Detalhado 

    Click Element                                ${CARTAO_DE_PONTO_DETALHADO}

Ir em Funcionarios 

    Click Element                                ${FUNCIONARIOS}

Clicar em PDF

    Click Element                                ${PDF}

Data Inicial

    Input Text                                   ${DATA_INICIO}                 01/01/2023

Data Final

    Input Text                                   ${DATA_FIM}                    01/04/2023

Gerar Relatorio 

    Click Element                                ${GERAR}
    Sleep                                        10s
BAIXAR

    Click Element                                ${BAIXAR}
    Sleep                                        10s

#COLOCAR SLEEP PARA VER SE VAI GERAR
*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Relatorios
    Clicar em Cartão de Ponto Detalhado
    Ir em Funcionarios
    Clicar em PDF
    Data Inicial
    Data Final
    Gerar Relatorio
    BAIXAR