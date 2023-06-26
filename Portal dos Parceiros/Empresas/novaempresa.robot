*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL}                                  https://parceiro.pontocertificado.com.br/
${BROWSER}                              chrome
${BTN_ACESSAR}                          xpath=//a[@href='/Admin']
${input_email}                          xpath=//input[@id='Email']
${input_password}                       xpath=//input[@id='Senha']
${BTN_ENTRAR}                           xpath=//button[@type='submit']
${EMPRESAS}                             xpath=//*[@id="sidebarnav"]/li[8]/a/span
${NOVA_EMPRESA}                         xpath=//*[@id="main-wrapper"]/div/div/div[1]/div[2]/div/a
${NOME_DA_EMPRESA}                      xpath=//*[@id="NomeEmpresa"]
${NOME_COMPLETO_USUARIO}                xpath=//*[@id="Usuario"]
${CPF/CNPJ}                             xpath=//*[@id="CnpjCpf"]
${EMAIL}                                xpath=//*[@id="Email"]
${SENHA}                                xpath=//*[@id="Senha"]
${CONFIRMA_SENHA}                       xpath=//*[@id="ConfirmeSenha"]
${TELEFONE}                             xpath=//*[@id="Telefone"]
${SALVAR}                               xpath=//*[@id="formCreateEmpresa"]/div[2]/div/button

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

Clicar em Empresas

    Click Element                               ${EMPRESAS}

Criar Empresa

    Click Element                               ${NOVA_EMPRESA}

Insere o Nome da Empresa

    Input Text                                  ${NOME_DA_EMPRESA}                    TESTEROBOT

Nome Completo do Usuario

    Input Text                                  ${NOME_COMPLETO_USUARIO}               VSROBOTTEST

Insere CPF/CNPJ

    Input Text                                  ${CPF/CNPJ}                            39.677.216/0001-21

Insere o Email

    Input Text                                  ${EMAIL}                               robot@robottesting.com    

Insere a Senha

    Input Text                                  ${SENHA}                                123456

Confirma a Senha

    Input Text                                  ${CONFIRMA_SENHA}                       123456

Insere o Telefone 

    Input Text                                  ${TELEFONE}                            99999999999

Clicar em Salvar

    Click Element                                ${SALVAR}

*** Test Cases ***
Abrir Site
    Acessar a pagina Portal dos Parceiros
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar
    Clicar em Empresas
    Criar Empresa
    Insere o Nome da Empresa
    Nome Completo do Usuario
    Insere CPF/CNPJ
    Insere o Email
    Insere a Senha
    Confirma a Senha
    Insere o Telefone
    #Clicar em Salvar
