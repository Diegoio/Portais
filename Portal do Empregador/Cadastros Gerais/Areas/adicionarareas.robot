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
${ADICIONAR}                            xpath=//a[@id="introjs_add"]
${input_nome}                           xpath=//input[@id="Nome"]
${input_descricao}                      xpath=//input[@id="Descricao"]
${UNIDADE_ADM}                          xpath=//*[@id="LocalDeOperacao_Id"]/option[2]
${CIRCULO}                              xpath=//a[@id="btnCirculo"]
${POLIGONO}                             xpath=//a[@id="btnPoligono"]
${input_endereço}                       xpath=//input[@id="endereco"]
${PESQUISA_ENDEREÇO}                    xpath=//i[@id="searchIcon"]
${CLICAR_NO_MAPS}                       css=.gm-style > div > div:nth-child(2)
${input_descriçao_local}                xpath=//input[@id="DescricaoLoccer"]
${adiciona_descriçao}                   xpath=//img[@src='http://findicons.com/files/icons/1014/ivista/128/plus.png']
${SALVAR}                               xpath=//button[@id="introjs_save"]


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
                                       
Clicar em Adicionar

    Click Element                           ${ADICIONAR}

Colocar o Nome

    Input Text                              ${input_nome}               aaaaaaaaaaaaaaaa     
                            
Colocar a Descrição

    Input Text                              ${input_descricao}            bbbbbbbbbbbbbbbb
                                      
Unidade Administrativa

    Click Element                           ${UNIDADE_ADM} 
                                    
Clicar em CIRCULO

    Click Element                            ${CIRCULO}
                                   
Clicar em POLIGONO

    Click Element                            ${POLIGONO}

Colocar o Endereço 

    Input Text                               ${input_endereço}      Rua Verde, 19 Jardim Prainha
                                  
Pesquisa o Endereço

    Click Element                            ${PESQUISA_ENDEREÇO} 
                                  
Clicar no Local do MAPS 

    Click Element                            ${CLICAR_NO_MAPS}
                                  
Descrição do Local

    Input Text                              ${input_descriçao_local}        aaaaaaaaaaaaaaaaaa
                               
Clicar em SALVAR

    Click Element                          ${SALVAR} 

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Cadastros Gerais 
    Clicar em Áreas 
    Clicar em Adicionar
    Colocar o Nome
    Colocar a Descrição
    Unidade Administrativa
    Clicar em CIRCULO
    Colocar o Endereço
    Pesquisa o Endereço
    Clicar no Local do MAPS
    Descrição do Local
    #Clicar em SALVAR