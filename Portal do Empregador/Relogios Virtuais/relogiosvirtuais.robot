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
${BTN_REL}                          xpath=//span[contains(.,'Relógios Virtuais')]
${NSERIE}                           xpath=//input[contains(@name,'Nserie')]
${PESQUISAR}                        XPATH=//button[@type='button'][contains(.,'Pesquisar')]


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

Clicar em Relógios Virtuais

    Click Element                            ${BTN_REL}

Inserir o Numero do Relógio

    Input Text                            ${NSERIE}     17730.757129

Clicar em Pesquisar

    Click Element                         ${PESQUISAR}


*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Relógios Virtuais
    Inserir o Numero do Relógio
    Clicar em Pesquisar



















