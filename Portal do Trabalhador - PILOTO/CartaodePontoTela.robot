*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL}                          https://pilotoweb.pontocertificado.com.br/
${BROWSER}                      chrome
${input_CPF}                    xpath=//input[@id="CPF"]
${input_Senha}                  xpath=//input[@id="Senha"]
${BTN_ENTRAR}                   xpath=//button[@class="btn btn-info btn-lg btn-block text-uppercase btn-rounded"]
${BTN_CONFIRMAR}                xpath=//button[@type="submit"]
${BTN_CartaodePontoTela}        xpath=//a[@id='idRelatorio']/i
${BTN_SelecionaDataInicio}      xpath=//input[@id='inicioBusca']
${BTN_SelecionaDataFim}         xpath=//input[@id='fimBusca']
${BTN_GERAR}                    xpath=//button[@class="btn btnPCSStyle fonteBaterPonto mr-1 mt-1"]


*** Keywords ***
Acessar a pagina portal do trabalhador
    
    Open Browser                            url=${URL}      browser=${BROWSER}

Preencher campos
    
    Input Text                              ${input_CPF}        66497817034               


    Input Text                              ${input_Senha}      66497     

Clicar em Entrar

    Click Element                           ${BTN_ENTRAR}

Clicar em Confirmar1
    
    Click Element                           ${BTN_CONFIRMAR}

Clicar em Cartão de Ponto Tela

    Click Element                           ${BTN_CartaodePontoTela}  
    Input Text                              ${BTN_SelecionaDataInicio}        01-02-2023
    Input Text                              ${BTN_SelecionaDataFim}           15-02-2023
    Sleep                                   5s
Clicar em Gerar Relatório

    Click Element                           ${BTN_GERAR}
    Sleep                                   5s
Fechar o browser
    Close Browser

*** Test Cases ***
Abrir Site
    Acessar a pagina portal do trabalhador
    Preencher campos
    Clicar em Entrar
    Clicar em Confirmar1
    Clicar em Cartão de Ponto Tela
    Clicar em Gerar Relatório
    Fechar o browser