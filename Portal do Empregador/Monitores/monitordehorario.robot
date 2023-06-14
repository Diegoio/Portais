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
${MONITOR_HORARIO}                      xpath=//*[@id="mnQuadroHorario"]/a/span
${Adicionar}                            xpath=//*[@id="content"]/div[1]/div[2]/a
${UNIDADE_ADM}                          xpath=//*[@id="LocalDeOperacao_Id"]/option[2]
${DESCRICAO}                            xpath=//*[@id="Descricao"]
${EMAIL}                                xpath=//*[@id="Email"]
${UF_QUADRO}                            xpath=//*[@id="Estado_Id"]/option[25]
${INICIO_EXPEDIENTE}                    xpath=//input[@id="HoraAlertaIniExp"]
${ADIANTADO_INICIO}                     xpath=//input[@id='ToleranciaMinimaIniExp']
${ATRASADO_INICIO}                      xpath=//input[@id='ToleranciaMaximaIniExp']
${AVISO_INICIO}                         xpath=//*[@id="formEdit"]/fieldset[2]/div[2]/section[1]/label/i




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

Clicar em Monitor de Horario

    Click Element                               ${MONITOR_HORARIO}

Adicionar Monitor de Horario

    Click Element                                ${Adicionar}            

Unidade ADM

    Click Element                               ${UNIDADE_ADM}

Descrição

    Input Text                                  ${DESCRICAO}                teste

Email de Notificação

    Input Text                                  ${EMAIL}                    testerobot@teste.com
    
Seleciona o Local

    Click Element                               ${UF_QUADRO}
    Sleep    10
Inicio do Expediente 
    
    Click Element                               ${INICIO_EXPEDIENTE}  
    Sleep    10    
    Input Text                                  ${INICIO_EXPEDIENTE}       1111
    Sleep    10
Adiantado Inicio do Expediente
    
    Click Element                               ${ADIANTADO_INICIO}
    Sleep    10
    Input Text                                  ${ADIANTADO_INICIO}        1212 
    Sleep    10
Atrasado Inicio do Expediente

    Click Element                               ${ATRASADO_INICIO}
    Sleep    10
    Input Text                                  ${ATRASADO_INICIO}         1313
    Sleep    10
Aviso Inicio

    Click Element                               ${AVISO_INICIO}


*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Monitor de Horario
    Adicionar Monitor de Horario
    Unidade ADM
    Descrição
    Email de Notificação
    Seleciona o Local
    Inicio do Expediente
    Adiantado Inicio do Expediente
    Atrasado Inicio do Expediente
    Aviso Inicio
