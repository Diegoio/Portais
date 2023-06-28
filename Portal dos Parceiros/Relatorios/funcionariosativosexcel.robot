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
${FUNC_ATIVOS}                          xpath=//*[@id="sidebarnav"]/li[9]/ul/li[1]/a
${input_empresa}                        xpath=//*[@id="searchInput"]
${FILTRAR}                              xpath=//*[@id="main-wrapper"]/div/div/div[1]/div[1]/div/div[2]/form/div/div[3]/div/div/button[1]
${EXCEL}                                xpath=//*[@id="lista_wrapper"]/div[1]/button[3]


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

Clicar em Funcionarios Ativos 

    Click Element                               ${FUNC_ATIVOS}

Buscar Empresa

    Input Text                                  ${input_empresa}                pontocertificado
   
Filtrar
    
    Click Element                               ${FILTRAR}
    Sleep    5
Excel

    Click Element                               ${EXCEL}
    
*** Test Cases ***
Abrir Site
    Acessar a pagina Portal dos Parceiros
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar
    Clicar em Relatorios
    Clicar em Funcionarios Ativos
    Buscar Empresa
    Filtrar
    Excel