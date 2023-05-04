*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL}                          https://jornada.pontocertificado.com.br/
${BROWSER}                      chrome
${input_Usuario}                xpath=//input[@id="Usuario"]
${input_Senha}                  xpath=//input[@id="Senha"]
${BTN_ENTRAR}                   xpath=//button[@type="submit"]
${BTN_SelecionaDataInicio}      xpath=//input[@id="DataInicial"]
${BTN1}                         css=.datepicker-days .picker-switch
${BTN2}                         css=.datepicker-months .prev
${BTN3}                         css=.month:nth-child(2)
${BTN4}                         css=tr:nth-child(1) > .day:nth-child(3)
${BTN_SelecionaDataFim}         xpath=//input[@id="DataFinal"]
${BTN5}                         css=.datepicker-days .picker-switch
${BTN6}                         css=.datepicker-months .prev > .fa
${BTN7}                         css=.month:nth-child(2)
${BTN8}                         css=tr:nth-child(3) > .day:nth-child(3)
${input_Trabalhador}            xpath=//*[@id="trabalhador"]/option[4]
${BTN_Lancamento}               xpath=//input[@id="tipoGeracao0"]
#${BTN_Lancamento}               xpath=//*[@id="lancamento"]/option[2]
#${BTN_Lancamento}               xpath=//*[@id="lancamento"]/option[3]
${BTN_BUSCAR}                   xpath=//button[@onclick="validaFormatoGeracao();"]



*** Keywords ***
Acessar a pagina portal da RUMO
    
    Open Browser                            url=${URL}      browser=${BROWSER}

Preencher campos
    
    Input Text                              ${input_Usuario}        diegodomingos20.dd@gmail.com                       


    Input Text                              ${input_Senha}          123456   

Clicar em Entrar

    Click Element                           ${BTN_ENTRAR}

Seleciona o Tipo de Lancamento Inicial
    
    Click Element                           ${BTN_SelecionaDataInicio}   
    Click Element                           ${BTN1}
    Click Element                           ${BTN2}   
    Click Element                           ${BTN3}
    Click Element                           ${BTN4}       

Seleciona o Tipo de Lancamento Final

    Click Element                           ${BTN_SelecionaDataFim}
    Click Element                           ${BTN5}
    Click Element                           ${BTN6}
    Click Element                           ${BTN7}
    Click Element                           ${BTN8}
                                                        

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