*** Settings *** 
Library        SeleniumLibrary

*** Variables ***

${URL}                          http://pilotoiframelexy.pontocertificado.com.br/
${BROWSER}                      chrome
${input_Usuario}                xpath=//input[@id="Usuario"]
${input_Senha}                  xpath=//input[@id="Senha"]
${BTN_ENTRAR}                   xpath=//button[@type="submit"]
${BTN_SelecionaDataInicio}      xpath=//input[@id="DataInicial"]
${BTN_SelecionaDataFim}         xpath=//input[@id="DataFinal"]
${input_Trabalhador}            xpath=//*[@id="trabalhador"]/option[4]
${BTN_Lancamento}               xpath=//input[@id="tipoGeracao0"]
#${BTN_Lancamento}               xpath=//*[@id="lancamento"]/option[2]
#${BTN_Lancamento}               xpath=//*[@id="lancamento"]/option[3]
${BTN_BUSCAR}                   xpath=//button[@onclick="validaFormatoGeracao();"]



*** Keywords ***
Acessar a pagina portal da RUMO
    
    Open Browser                            url=${URL}      browser=${BROWSER}

Preencher campos
    
    Input Text                              ${input_Usuario}        kevin1@gmail.com                       


    Input Text                              ${input_Senha}          a1111111   

Clicar em Entrar

    Click Element                           ${BTN_ENTRAR}

Seleciona o Tipo de Lancamento Inicial
      
    Clear Element Text                              ${BTN_SelecionaDataInicio}     
    Input Text                                      ${BTN_SelecionaDataInicio}     01/02/2022
    
Seleciona o Tipo de Lancamento Final
  
    Clear Element Text                              ${BTN_SelecionaDataFim}                             
    Input Text                                      ${BTN_SelecionaDataFim}        15/02/2022                       
                                          

Clicar em trabalhador

    Click Element                           ${input_Trabalhador}        
    Click Element                           ${BTN_Lancamento}

Clicar em Buscar

    Click Element                           ${BTN_BUSCAR} 

Fechar o browser
    Close Browser

*** Test Cases ***
Abrir Site
    Acessar a pagina portal da RUMO
    Preencher campos
    Clicar em Entrar
    Seleciona o Tipo de Lancamento Inicial
    Seleciona o Tipo de Lancamento Final
    Clicar em trabalhador
    Clicar em Buscar
    Fechar o browser