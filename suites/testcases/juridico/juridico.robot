*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: Acessar o menu juridico
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu one
  E clico no submenu juridico
  E clico na opcao juridico
  Então vejo a tela consulta geral

Cenario 2: Pesquisar o Id cliente
  [Tags]  2
  Dado que estou na Tela consulta geral 
  Quando seleciono uma opcao no campo filtro
  E digito um Id de cliente
  E clico no nome do cliente
  E clico no botao pesquisar1
  Então vejo os processos do cliente  
  Sleep  5s

Cenario 3: Menu aprovações financias
  [Tags]  3
  Dado que estou na Tela consulta geral
  E seleciono o cliente
  Quando seleciono o menu aprovações financias
  E clico no botao visualizar interacao
  Então vejo a operacao cobranca corporativa  

Cenario 3: Menu aprovações financias
  [Tags]  4
  Dado que estou na Tela consulta geral 
  Quando seleciono o meunu ficha cliente
  E clico no botao visualizar interecao
  Então vejo a operacao cobranca corporativa    