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
${AFD_REPP}                             xpath=//*[@id="mnREPP"]/a/span
${DATA_INICIO}                          xpath=//input[@id="inicioBusca"]
${DATA_FIM}                             xpath=//input[@id="fimBusca"]
${GERAR}                                xpath=//*[@id="form0"]/footer/button


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

Clicar em AFD REPP

    Click Element                                ${AFD_REPP}

Data Inicial

    Input Text                                   ${DATA_INICIO}                 23/03/2022

Data Final

    Input Text                                   ${DATA_FIM}                    23/04/2022

Gerar Relatorio 

    Click Element                                ${GERAR}
#COLOCAR SLEEP PARA VER SE VAI GERAR
*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Relatorios
    Clicar em AFD REPP
    Data Inicial
    Data Final
    Gerar Relatorio