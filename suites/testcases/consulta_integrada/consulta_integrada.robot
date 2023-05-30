*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: Acessar a pagina consulta integrada
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu one
  E clico no menu consulta integrada
  E clico na opcao consulta integrada
  Então vejo a pagina consulta integrada

Cenário 2: filtro consulta integrada
  [Tags]  2 
  Dado que estou na pagina consulta integrada
  Quando clico no botao tipo de consulta raiz
  E clico no botao perfil b2c
  E digito um valor no campo raiz
  E clico no botao pesquisar
  Então vejo um grid faixa de atraso