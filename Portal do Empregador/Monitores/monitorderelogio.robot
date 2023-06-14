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
${MONITOR_RELOGIO}                      xpath=//*[@id="mnMonitoramentoRelogio"]/a
${input_nome_relogio}                   xpath=//*[@id="Descricao"]
${PESQUISAR}                            xpath=//*[@id="monitoramento_search"]/div/div/footer/button

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

Clicar em Monitor de Relógio

    Click Element                               ${MONITOR_RELOGIO}

Inserir o Nome do Relógio

    Input Text                                  ${input_nome_relogio}            RELOGIO WEB TESTE ROBERTO

Clicar em PESQUISAR

    Click Element                               ${PESQUISAR}

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Monitor de Relógio
    Inserir o Nome do Relógio
    Clicar em PESQUISAR
    