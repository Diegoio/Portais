*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${URL_PRINCIPAL}                       https://www.pontocertificado.com.br
${BROWSER}                             chrome
${Como_Funciona}                       css=li:nth-child(3) > .header
${Segurança}                           css=li:nth-child(4) > .header
${Revenda}                             css=li:nth-child(5) > .header
${A_Stefanini}                         css=li:nth-child(6) > .header
${Suporte}                             css=li:nth-child(7) > .header
${Requisitos}                          css=li:nth-child(8) > .header


*** Keywords ***
Acessar a pagina pontocertificado
    
    Open Browser                        url=${URL_PRINCIPAL}      browser=${BROWSER}
    Maximize Browser Window

Clicar em Como Funciona

    Click Element                       ${Como_Funciona}


Clicar em Segurança
   
    Click Element                       ${Segurança} 
    Sleep                               5s
Clicar em Revenda
   
    Click Element                       ${Revenda} 
    Sleep                               5s
Clicar em A Stefanini
   
    Click Element                       ${A_Stefanini} 
    Sleep                               5s
Clicar em Suporte
   
    Click Element                       ${Suporte} 
    Sleep                               5s
Clicar em Requisitos
   
    Click Element                       ${Requisitos} 
    Sleep                               5s
Fechar o browser
    Close Browser

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Como Funciona
    Clicar em Segurança
    Clicar em Revenda
    Clicar em A Stefanini
    Clicar em Suporte
    Clicar em Requisitos
    Fechar o browser
   