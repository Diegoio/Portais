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
${func}                             xpath=//li[3]/a/span
${adfunc}                           xpath=//a[@id="introjs_add"]
${input_Cpf}                        xpath=//input[@id="Cpf"]
${input_Nome}                       xpath=//input[@id="Nome"]
${input_Sexo}                       xpath=//select[@id="Sexo"]/option[2]
${input_Data}                       xpath=//input[@id="DataNascimento"]
${input_Pis}                        xpath=//input[@id="Pis"]
${input_insereEmail}                xpath=//input[@id="Email"]
${input_DataAdmissao}               xpath=//input[@id="TrabalhadorEmpresa_DataAdmissao"]
${input_Matricula}                  xpath=//input[@id="TrabalhadorEmpresa_Matricula"]
${input_Departamento}               xpath=//select[@id="TrabalhadorEmpresa_Departamento_Id"]/option[11] 
${input_Cargo}                      xpath=//select[@id="TrabalhadorEmpresa_Funcao_Id"]/option[3]
${input_Local}                      xpath=//input[@id="TrabalhadorEmpresa_LocalDestacamento"]
#${BTN_Salvar}                       xpath=//button[@id="introjs_save"]


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

Clicar em Funcionarios

    Click Element                           ${func}

Clicar em Adicionar Funcionarios

    Click Element                           ${adfunc}

Colocar o Cpf

    Input Text                              ${input_Cpf}        629.737.200-44

Colocar o Nome  

    Input Text                              ${input_Nome}       00000000000000


Colocar o Sexo

    Click Element                           ${input_Sexo}           
             

Data de Nascimento

    Input Text                              ${input_Data}           11-12-1986
    Sleep                                   5s
Colocar o Pis

    Input Text                              ${input_Pis}            000.00000.00-0

Inserir Email

    Input Text                              ${input_insereEmail}    teste@teste.com 

Data de Admissão

    Input Text                              ${input_DataAdmissao}   01-01-2021  
    Sleep                                   5s
Inserir Matricula      

    Input Text                              ${input_Matricula}      0000000000000000

Inserir Departamento

    Click Element                           ${input_Departamento}     #Aqui você pode mudar a opção de 1 ao 14 sendo que está selecionado no 11  

Inserir Cargo

    Click Element                           ${input_Cargo}              

Inserir Local

    Input Text                              ${input_Local}              0000000000
    Sleep                                   5s
Clicar em Salvar

    Click Element                           ${BTN_Salvar}                

*** Test Cases ***
Abrir Site
    Acessar a pagina pontocertificado
    Clicar em Acessar
    Clicar em Entrar
    Preencher campos
    Clicar em Entrar2
    Clicar em Funcionarios
    Clicar em Adicionar Funcionarios
    Colocar o Cpf
    Colocar o Nome
    Colocar o Sexo
    Data de Nascimento
    Colocar o Pis
    Inserir Email
    Data de Admissão
    Inserir Matricula
    Inserir Departamento
    Inserir Cargo
    Inserir Local
 #   Clicar em Salvar
  