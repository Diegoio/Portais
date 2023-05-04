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
${BTN_ADCIONAR}                     xpath=//a[contains(@class,'btn btn-success btn-lg header-btn')]
${UNIDADEPADRAO}                    xpath=//*[@id="LocalDeOperacao_Id"]/option[2]
${input_Apelido}                    xpath=//input[contains(@data-val-length,'Campo deve possuir no m&#225;ximo 40 caracter(s)')]
${input_senha}                      xpath=//input[@name='Senha']
${input_senha2}                     xpath=//input[contains(@data-val-equalto,'As senhas n&#227;o conferem!')]
${input_info}                       xpath=//input[contains(@data-val-length,'Campo deve possuir no m&#225;ximo 100 caracter(s)')]                  
${input_local}                      xpath=//input[@data-val='true'][contains(@id,'Logradouro')]
${input_numero}                     xpath=//input[contains(@name,'Endereco.Numero')]
${input_complemento}                xpath=//input[@data-val='true'][contains(@id,'Complemento')]
${input_bairro}                     xpath=//input[@data-val='true'][contains(@id,'Bairro')]
${input_cep}                        xpath=//input[@data-val='true'][contains(@id,'Cep')]
${input_cidade}                     xpath=//input[@data-val='true'][contains(@id,'Cidade')]
${BTN_UF}                           xpath=//*[@id="EstadoInfo_Id"]/option[26]
                                    #NO UF ESCOLHER DO 1 AO 27 NO CODIGO
${RELOGIO_WEB}                      xpath=//input[@id="RelogioWeb"]
${RELOGIO_WEB_PADRAO}               xpath=//input[@id="Padrao"]
${SOLICITAR_GPS}                    xpath=//input[@id="RequerGps"]
${SOLICITAR_CERCA_MANUAL}           xpath=//input[@id="SolicitarCercaManual"]
${REGISTRO_QRCODE}                  xpath=//input[@id="RequerQRCode"]
${ESQUECI_CRACHA}                   xpath=//input[@id="RequerEsqueciCracha"]
${SOLICITA_MATRICULA}               xpath=//input[@id="RequerMatricula"]
${SOLICITA_SELFIE}                  xpath=//input[@id="RequerSelfie"]
${ENVIA_SELFIE_WIFI}                xpath=//input[@id="RequerTresG"]
${UTILIZA_MOLDURA}                  xpath=//input[@id="RequerMoldura"]
${BTN_SALVAR}                       xpath=//button[@id="introjs_save"]




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

Clicar em Relógios Virtuais

    Click Element                                ${BTN_REL}

Clicar em Adicionar

    Click Element                               ${BTN_ADCIONAR}

Clicar em Unidade Padrão

    Click Element                              ${UNIDADEPADRAO}
    
Clicar em Apelido

    Input Text                                ${input_Apelido}    aaaaaaaaaaaaaa
    
Colocar a Senha

    Input Text                                ${input_senha}        123456
    
Repita a Senha

    Input Text                                ${input_senha2}        123456
    
Informações do Relógios

    Input Text                                ${input_info}        aaaaaaaaaaaaaaaa
    
Local de Operação

    Input Text                                ${input_local}     111
    
Inserir Numero
    
    Input Text                                 ${input_numero}      11     
    
Inserir Complemento    

    Input Text                                ${input_complemento}    11111
    
Inserir Bairro

    Input Text                                ${input_bairro}        111111111
    
Inserir CEP

    Input Text                                ${input_cep}            11111111
    
Inserir Cidade

    Input Text                                ${input_cidade}        11111111111
    
Inserir UF

    Click Element                            ${BTN_UF}                

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Relógios Virtuais
    Clicar em Adicionar
    Clicar em Unidade Padrão
    Clicar em Apelido
    Colocar a Senha
    Repita a Senha
    Informações do Relógios
    Local de Operação
    Inserir Numero
    Inserir Complemento
    Inserir Bairro
    Inserir CEP
    Inserir Cidade
    Inserir UF