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
${FUNC_CP_REG}                          xpath=//*[@id="sidebarnav"]/li[9]/ul/li[2]/a
${input_busca_empresa}                  xpath=//*[@id="searchInput"]
${DATA_INICIO}                          xpath=//*[@id="dataInicio"]
${DATA_FINAL}                           xpath=//*[@id="dataFim"]
${FILTRAR}                              xpath=//button[contains(.,'Filtrar')]
${CSV}                                  xpath=//*[@id="lista_wrapper"]/div[1]/button[2]

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
Clicar em Funcionarios com Ponto Registrado 

    Scroll Element Into View                    ${FUNC_CP_REG}
    Click Element                               ${FUNC_CP_REG}  

Buscar Nome ou CNPJ

    Input Text                                  ${input_busca_empresa}            45742707000101

Insere a data Inicial

    Input Text                                  ${DATA_INICIO}                    01/01/2023

Insere a data Final

   Input Text                                  ${DATA_FINAL}                      01/03/2023

FILTRAR

    Click Element                              ${FILTRAR}
    Sleep    30

CSV

    Click Element                               ${CSV}
    
*** Test Cases ***
Abrir Site
    Acessar a pagina Portal dos Parceiros
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar
    Clicar em Relatorios
    Clicar em Funcionarios com Ponto Registrado
    Buscar Nome ou CNPJ
    Insere a data Inicial
    Insere a data Final
    Filtrar
    CSV