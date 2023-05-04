*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${input_name}               id:name
${input_phone}              id:phone
${input_email}              id:email
${input_password}           id:password
${textarea_address}         id:address
${button_submit}            name:submit

*** Keywords ***
abrir navegador
    Open Browser        https://itera-qa.azurewebsites.net/home/automation  chrome  

preencher campos
    Input Text          ${input_name}               Diego
    Sleep               1s
    Input Text          ${input_phone}              999888777666555
    Sleep               1s
    Input Text          ${input_email}              diego@teste.com
    Sleep               1s
    Input Text          ${input_password}           123456
    Sleep               1s
    Input Text          ${textarea_address}         xxxxxxxxxxxxxxx
    Sleep               1s

clicar em submit        
    Click Element       ${button_submit}

fechar navegador    
    Close Browser



***Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador
    preencher campos
    clicar em submit
    fechar navegador