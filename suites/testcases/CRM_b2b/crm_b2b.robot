*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: Acessar a pagina atendimento
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu one
  E clico no submenu CRM-B2B
  E clico na opcao cob-b2b
  Então vejo a pagina atendimento cobway

Cenário 2: selecionar um cliente
  [Tags]  2
  Dado que estou na pagina atendimento cobway
  Quando clico no botao selecionar grupo
  Então vejo os dados do cliente b2b
