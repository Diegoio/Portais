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
${SENHA_ADM}                            xpath=//*[@id="sidebarnav"]/li[7]/ul/li[4]/a/span
${TRABALHADORES}                        xpath=//*[@id="sidebarnav"]/li[7]/ul/li[4]/ul/li[2]/a
${PARCEIRO}                             xpath=//*[@id="IdParceiro"]/option[25]
${EMPRESA}                              xpath=//*[@id="IdEmpresa"]/option[2257]
${input_senha}                          xpath=//*[@id="Senha"]
${input_confirma_senha}                 xpath=//*[@id="ConfirmaSenha"]
${input_justificativa}                  xpath=//*[@id="Justificativa"]
${ENVIAR}                               xpath=//button[@type='submit']

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
Clicar em Senha ADM

    Click Element                               ${SENHA_ADM}
    Sleep    5

Clicar em Trabalhadores  

    Click Element                               ${TRABALHADORES}

Seleciona o Parceiro  

    Click Element                               ${PARCEIRO}
    Sleep    5
Seleciona a Empresa

    Click Element                               ${EMPRESA}
    Sleep    5
Insere a Senha

    Input Text                                  ${input_senha}                123456
    Sleep    5
Confirma a Senha

    Input Text                                  ${input_confirma_senha}        123456
    Sleep    5
Insere a Justificativa 

    Input Text                                  ${input_justificativa}        QUALQUER
    Sleep    5


*** Test Cases ***
Abrir Site
    Acessar a pagina Portal dos Parceiros
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar
    Clicar em TECNICO
    Clicar em Senha ADM
    Clicar em Trabalhadores
    Seleciona o Parceiro
    Seleciona a Empresa
    Insere a Senha
    Confirma a Senha
    Insere a Justificativa
   