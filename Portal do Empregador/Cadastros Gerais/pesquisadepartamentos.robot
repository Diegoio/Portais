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
${BTN_DEPARTAMENTOS}                xpath=//*[@id="mnDepartamentos"]/a/span
${input_departamento}               xpath=//input[@id="Nome"]
${BTN_PESQUISAR}                    xpath=//button[@type='button']
${inativar}                         xpath=//label[contains(.,'INATIVAR')]
${inativas}                         xpath=//*[@id="sta_0"]/a
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
    
Clicar em Departamentos

    Click Element                           ${BTN_DEPARTAMENTOS}
   

Inserir Departamento

    Input Text                              ${input_departamento}       JMETER

Clicar em Pesquisar 
    
    Click Element                           ${BTN_PESQUISAR}

Clicar em Inativar

    Click Element                            ${inativar}

Clicar em Inativos

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
    Clicar em Departamentos
    Inserir Departamento
    Clicar em Pesquisar
    Clicar em Inativar
    Clicar em Inativos
    Clicar em ativar    