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
${AFD}                                  xpath=//*[@id="mnAfd"]/a/span
${REPV_TODOS}                           xpath=//*[@id="Relogios"]/option[1]
${PERIODOS}                             xpath=//*[@id="Per_odos"]/option[6]
${GERAR_RELATORIO_1510}                 xpath=//*[@id="form0"]/footer/button
${CONFIRMA_GERAR_RELATORIO_1510}        css=#AFD1510Modal .btn-primary
${BAIXAR_ARQUIVO}                       xpath=//*[@id="resultadoMarcacoes"]/footer/div
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


Clicar em Relatorios 

    Click Element                                ${RELATORIOS}
    Sleep                                        5s

Clicar em AFD 

    Click Element                                ${AFD}

Seleciona Todos os Relógios

    Click Element                                ${REPV_TODOS}

Clicar em Periodos 

    Click Element                                ${PERIODOS}

Gerar Relatorios

    Click Element                                ${GERAR_RELATORIO_1510}
    Sleep    5s
Confirmar geração de Relatorios

    Click Element                                ${CONFIRMA_GERAR_RELATORIO_1510}
    Sleep                                        60s

Clicar em Baixar

    Click Element                                ${BAIXAR_ARQUIVO}
Clicar em SALVAR

    Click Element                                ${SALVAR} 

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Relatorios
    Clicar em AFD
    Seleciona Todos os Relógios
    Clicar em Periodos 
    Gerar Relatorios
    Confirmar geração de Relatorios
    Clicar em Baixar 
    #Clicar em SALVAR