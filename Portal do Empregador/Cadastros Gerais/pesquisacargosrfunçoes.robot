*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL}                              https://www.pontocertificado.com.br
${BROWSER}                          chrome
${BTN_ACESSAR}                      css=li > .btn
${BTN_ENTRAR}                       css=.col-sm-6:nth-child(2) .btn
${input_email}                      xpath=//input[@id='Email']
${input_password}                   xpath=//input[@id='Senha']
${BTN_ENTRAR2}                      css=.fourth
${CADASTRO_GERAIS}                  css=#mnCadastrosGerais .menu-item-parent
${BTN_CEF}                          css=#mnFuncoes .fonte-navbar-parceiro
${input_cargo}                      xpath=//input[@id="Nome"]
${BTN_PESQUISAR}                    xpath=//button[@type='button']
${inativar}                         xpath=//label[contains(.,'INATIVAR')]
${inativas}                         xpath=//span[contains(.,'Inativas(1)')]
${ativar}                           xpath=//label[contains(.,'ATIVAR')]
*** Keywords ***
Acessar a pagina pontocertificado

    Open Browser                            url=${URL}      browser=${BROWSER}
    Maximize Browser Window

Clicar em Acessar

    Click Element                           ${BTN_ACESSAR}


Clicar em Entrar
   
    Click Element                           ${BTN_ENTRAR} 

Preencher campos

    Input Text                              ${input_email}      ROBERTO.TESTEPROD@PCS.COM               

    Input Text                              ${input_password}   123  

Clicar em Entrar2

    Click Element                           ${BTN_ENTRAR2}


Clicar em Cadastros Gerais 

    Click Element                            ${CADASTRO_GERAIS}
    
Clicar em Cargos e Funções

    Click Element                           ${BTN_CEF}
   

Inserir Cargo/Função

    Input Text                              ${input_cargo}       TESTADOR JMETER

Clicar em Pesquisar 
    
    Click Element                           ${BTN_PESQUISAR}

Clicar em Inativar

    Click Element                            ${inativar}

Clicar em Inativas

    Click Element                           ${inativas}  
    Sleep                                   5s
Clicar em ativar

    Click Element                            ${ativar}

                   

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastros Gerais 
    Clicar em Cargos e Funções
    Inserir Cargo/Função
    Clicar em Pesquisar
    Clicar em Inativar
    Clicar em Inativas
    Clicar em ativar    