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
${BTN_PESQUISA_DE_SATISFAÇÃO}           xpath=//span[@class='fonte-navbar-parceiro'][contains(.,'Pesquisa de Satisfação')]
${ADICIONAR}                            xpath=//a[@id="introjs_add"]
${DESCRICAO_DA_PESQUISA}                xpath=//input[@id="Descricao"]
${TEMPO_LIMITE}                         xpath=//input[@id="tempoLimite"]
${ADICIONAR_TEXTO}                      xpath=//a[@id="btnAddTexto"]
${COLOCAR_TEXTO}                        xpath=//input[@id='text_new_1_novo']
${ADICIONAR_ESTRELAS}                   xpath=//a[@id="btnAddNumero"]
${COLOCAR_TEXTO_ESTRELAS}               xpath=//input[@id="text_new_2_novo"]
${SIM_NAO}                              xpath=//a[@href='javascript: addCampoToCategoria(2)'][contains(.,'Sim/Não')]
${COLOCAR_TEXTO_SIM_NAO}                xpath=//input[contains(@id,'text_new_3_novo')]
${MULTIPLA}                             xpath=//a[@href='javascript: addCampoToCategoria(4)'][contains(.,'Multipla')]
${COLOCAR_TEXTO_MULTIPLA}               xpath=//*[@id="text_new_4_novo"]
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


Clicar em Cadastros Gerais 

    Click Element                                ${CADASTRO_GERAIS}
    Sleep                                        5s
Clicar em Pesquisa de Satisfação

    Click Element                               ${BTN_PESQUISA_DE_SATISFAÇÃO}
    Sleep                                       5s
Clicar em Adicionar

    Click Element                               ${ADICIONAR}

Inserir Descrição

    Input Text                                  ${DESCRICAO_DA_PESQUISA}        TESTANDO

Inserir Tempo Limite 

    Input Text                                  ${TEMPO_LIMITE}        09:00

Adicionar Texto 

    Click Element                               ${ADICIONAR_TEXTO}

Inserir Texto    

    Input Text                                 ${COLOCAR_TEXTO}       Está com Todos os Equipamentos?            

Adicionar Estrelas 

    Click Element                              ${ADICIONAR_ESTRELAS}

Insere Texto Estrelas      

    Input Text                                 ${COLOCAR_TEXTO_ESTRELAS}    aaaaaaaaaaa

Adicionar SIM/Não

    Click Element                              ${SIM_NAO}

Insere Texto SIM/NÃO 

    Input Text                                 ${COLOCAR_TEXTO_SIM_NAO}         bbbbbbbbbb

Adicionar Multipla

    Click Element                               ${MULTIPLA} 


Insere Texto Multipla

    Input Text                                   ${COLOCAR_TEXTO_MULTIPLA}        cccccccccccc


Clicar em SALVAR

    Click Element                              ${SALVAR} 

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastros Gerais 
    Clicar em Pesquisa de Satisfação
    Clicar em Adicionar
    Inserir Descrição
    Inserir Tempo Limite 
    Adicionar Texto
    Inserir Texto  
    Adicionar Estrelas 
    Insere Texto Estrelas
    Adicionar SIM/Não
    Insere Texto SIM/NÃO
    Adicionar Multipla
    Insere Texto Multipla
    #Clicar em SALVAR


