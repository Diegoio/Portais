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
${CADASTRO_GERAIS}                      css=#mnCadastrosGerais .menu-item-parent
${BTN_AREAS}                            xpath=(//span[@class='fonte-navbar-parceiro'][contains(.,'Áreas')])[1]
${input_area}                           xpath=//input[contains(@id,'Nome')]
${PESQUISAR}                            xpath=//button[@type='button'][contains(.,'Pesquisar')]


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

    Click Element                           ${CADASTRO_GERAIS}
    Sleep                                   5s
Clicar em Áreas 

    Click Element                           ${BTN_AREAS}
    Sleep                                   5s

Inserir Áreas
    
    Input Text                             ${input_area}        CASAA

Clicar em Pesquisar 

    Click Element                          ${PESQUISAR}

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastros Gerais 
    Clicar em Áreas 
    Inserir Áreas
    Clicar em Pesquisar 