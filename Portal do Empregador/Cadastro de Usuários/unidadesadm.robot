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
${CADASTRO_DE_USUARIOS}                 xpath=//*[@id="mnCadUsuarios"]/a/span
${UNIDADES_ADM}                         xpath=//*[@id="mnUnidades"]/a/span
${ADICIONAR_UNIDADE}                    xpath=//*[@id="li-1"]/div/button/i
${DESCRICAO}                            xpath=//input[@id="Descricao"]
${CPF/CNPJ}                             xpath=//input[@id="CpfCnpj"] 
${LOGRADOURO}                           xpath=//input[@id="Endereco_Logradouro"]
${NUMERO}                               xpath=//input[@id="Endereco_Numero"]
${COMPLEMENTO}                          xpath=//input[@id="Endereco_Complemento"]
${BAIRRO}                               xpath=//input[@id="Endereco_Bairro"]
${CEP}                                  xpath=//input[@id="Endereco_Cep"]
${CIDADE}                               xpath=//input[@id="Endereco_Cidade"]
${UF}                                   xpath=//*[@id="EstadoInfo_Id"]/option[26]
#MUDAR A NUMERAÇÃO DO UF DE 2 AO 28
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


Clicar em Cadastro de Usuarios

    Click Element                                ${CADASTRO_DE_USUARIOS}
    Sleep                                        5s
Clicar em Unidades Administrativas

    Click Element                                ${UNIDADES_ADM}

Adicionar Unidades

    Click Element                                ${ADICIONAR_UNIDADE}

Inserir Descrição

    Input Text                                   ${DESCRICAO}                aaaaaaaaaaaaaa

Inserir CPF/CNPJ

    Input Text                                   ${CPF/CNPJ}                111.111.111-11

Inserir Logradouro  

    Input Text                                   ${LOGRADOURO}                bbbbbbbbbbbb

Inserir Numero 

    Input Text                                   ${NUMERO}                22222

Inserir COMPLEMENTO

    Input Text                                   ${COMPLEMENTO}                ccccccccccccccc

Inserir BAIRRO

    Input Text                                   ${BAIRRO}               dddddddddddddddd

Inserir CEP

    Input Text                                   ${CEP}                04.851-729

Inserir CIDADE

    Input Text                                   ${CIDADE}                    eeeeeeeeeeeeeee

Colocar UF

    Click Element                                 ${UF} 
    
Clicar em SALVAR

    Click Element                                ${SALVAR} 

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastro de Usuarios
    Clicar em Unidades Administrativas
    Adicionar Unidades
    Inserir Descrição
    Inserir CPF/CNPJ
    Inserir Logradouro
    Inserir Numero
    Inserir COMPLEMENTO
    Inserir BAIRRO
    Inserir CEP
    Inserir CIDADE
    Colocar UF
    #Clicar em SALVAR