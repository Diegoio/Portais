*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL}                                  https://parceiro.pontocertificado.com.br/
${BROWSER}                              chrome
${BTN_ACESSAR}                          xpath=//a[@href='/Admin']
${input_email}                          xpath=//input[@id='Email']
${input_password}                       xpath=//input[@id='Senha']
${BTN_ENTRAR}                           xpath=//button[@type='submit']
${RELATORIOS}                           xpath=//*[@id="sidebarnav"]/li[9]/a/span
${EMP_PONTO_BAT}                        xpath=//*[@id="sidebarnav"]/li[9]/ul/li[3]/a
${PARCEIRO}                             xpath=//*[@id="IdParceiro"]/option[26]
${STATUS}                               xpath=//*[@id="IdSituacao"]/option[2]
${BUSCA_EMPRESA}                        xpath=//*[@id="searchInput"]
${EMPRESA}                              xpath=//*[@id="IdEmpresa"]/option[1]
${FILTRAR}                              xpath=//button[contains(.,'Filtrar')]
${PDF}                                  xpath=//*[@id="lista_wrapper"]/div[1]/button[4]

*** Keywords ***
Acessar a pagina Portal dos Parceiros

    Open Browser                                url=${URL}      browser=${BROWSER}
    Maximize Browser Window

Clicar em Acessar

    Click Element                               ${BTN_ACESSAR}      

Preencher campos

    Input Text                                  ${input_email}      roberto.ohama@woopi.com.br              

    Input Text                                  ${input_password}   ijpt12y7 

Clicar em Entrar

    Click Element                               ${BTN_ENTRAR}

Clicar em Relatorios

    Click Element                               ${RELATORIOS}
    Sleep    5
Clicar em Empresas Ponto Batido 

    Scroll Element Into View                    ${EMP_PONTO_BAT}
    Click Element                               ${EMP_PONTO_BAT} 

Seleciona o Parceiro

    Click Element                               ${PARCEIRO}
    Sleep    5
Status da Empresa

    Click Element                                ${STATUS}

Busca Empresa

    Input Text                                   ${BUSCA_EMPRESA}            pontocertificado

EMPRESA

    Click Element                                ${EMPRESA}

Filtrar

    Click Element                                ${FILTRAR}
    Sleep    10

PDF

    Click Element                                ${PDF}
    
*** Test Cases ***
Abrir Site
    Acessar a pagina Portal dos Parceiros
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar
    Clicar em Relatorios
    Clicar em Empresas Ponto Batido
    Seleciona o Parceiro
    Status da Empresa
    Busca Empresa
    EMPRESA
    Filtrar
    PDF