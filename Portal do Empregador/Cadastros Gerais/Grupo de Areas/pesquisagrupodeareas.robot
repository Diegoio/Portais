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
${BTN_GRUPO_DE_AREAS}               xpath=//*[@id="mnArea"]/a/span
${input_grupo_de_areas}             xpath=//input[@id="Nome"]
${BTN_PESQUISAR}                    xpath=//button[@type='button'][contains(.,'Pesquisar')]
${BTN_GRUPO}                        xpath=//a[contains(.,'GRUPO JMETER')]
${BTN_VINCULA_AREA}                 xpath=//a[@id="VinculaArea"]
${input_cerca}                      css=tr:nth-child(1) > .char > .checkbox > i
${BTN_SALVAR}                       xpath=//button[@type='button'][contains(.,'Salvar')]
${BTN_OK}                           xpath=//button[@id="bot1-Msg1"]
${BTN_VINCULA_FUNCIONARIO}          xpath=//a[@id="VincularTrabalhador"]
${BTN_ADICIONA_FUNCIONARIO}         css=tr:nth-child(77) i
${BTN_SALVAR}                       xpath//button[@id="saveButton"]

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
    Sleep                                    5s
Clicar em Grupo de Areas

    Click Element                           ${BTN_GRUPO_DE_AREAS}
    Sleep                                   5s

Inserir Nome do Grupo de Areas

    Input Text                              ${input_grupo_de_areas}       GRUPO JMETER

Clicar em Pesquisar 
    
    Click Element                           ${BTN_PESQUISAR}

Clicar no Grupo

    Click Element                            ${BTN_GRUPO}

Vincula a Area 

    Click Element                            ${BTN_VINCULA_AREA} 
    Sleep                                    5s
Insere a Cerca 

    Click Element                           ${input_cerca}
    Sleep                                     5s
Clica em Salvar 

    Click Element                            ${BTN_SALVAR}
    Sleep                                    5s
Clicar em OK

    Click Element                            ${BTN_OK}
    Sleep                                    5s

Vincula Fincionario    

    Click Element                            ${BTN_VINCULA_FUNCIONARIO}
    Sleep                                    5s

Adiciona Funcionario 

    Click Element                             ${BTN_ADICIONA_FUNCIONARIO}
    Sleep                                     5s

Clicar em Salvar
    Click Element                             ${BTN_SALVAR}    

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastros Gerais 
    Clicar em Grupo de Areas
    Inserir Nome do Grupo de Areas
    Clicar em Pesquisar
    Clicar no Grupo
    Vincula a Area
    Insere a Cerca
    Clica em Salvar
    Clicar em OK
    Vincula Fincionario 
    Adiciona Funcionario 
    Clicar em Salvar