*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL}                                  https://parceiro.pontocertificado.com.br/
${BROWSER}                              chrome
${BTN_ACESSAR}                          xpath=//a[@href='/Admin']
${input_email}                          xpath=//input[@id='Email']
${input_password}                       xpath=//input[@id='Senha']
${BTN_ENTRAR}                           xpath=//button[@type='submit']
${TECNICO}                              xpath=//ul[@id='sidebarnav']/li[7]/a
${CONFIG_DE_EMP}                        xpath=//*[@id="sidebarnav"]/li[7]/ul/li[1]/a
${PESQUISA_EMP}                         xpath=//*[@id="lista_filter"]/label/input
${EDITAR_EMP}                           xpath=//*[@id="lista"]/tbody/tr[1]/td[6]/a[1]
${input_CPF/CNPJ}                       xpath=//*[@id="CnpjCpf"]
${SALVAR}                               xpath=//*[@id="formEditEmpresa"]/div[2]/div/input

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

Clicar em TECNICO

    Click Element                               ${TECNICO}
    Sleep    5
Clicar em Configurações de Empresas

    Click Element                               ${CONFIG_DE_EMP}
    Sleep    5
Pesquisar Empresas

    Input Text                                  ${PESQUISA_EMP}                EMPRESA3
    Sleep    10
Clicar em Editar Empresa

    Click Element                               ${EDITAR_EMP}
    Sleep    5
Insere CPF/CNPJ

    Clear Element Text                          ${input_CPF/CNPJ}
    Input Text                                  ${input_CPF/CNPJ}            21.553.970/0001-94

Clicar em Salvar

    Click Element                               ${SALVAR}

*** Test Cases ***
Abrir Site
    Acessar a pagina Portal dos Parceiros
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar
    Clicar em TECNICO
    Clicar em Configurações de Empresas
    Clicar em Editar Empresa
    Insere CPF/CNPJ
    Clicar em Salvar