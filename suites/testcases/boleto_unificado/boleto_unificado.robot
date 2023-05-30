*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup     efetuar login
Test Teardown  fechar navegador

*** Test Case ***
Cenário 1: Acessar boleto unificado
  [Tags]  1  smoke
  Dado que vejo a pagina home
  Quando clico no menu geral
  E seleciono a opção financas
  E seleciono a opção boleto one
  Então vejo a tela boleto unificado

Cenário 2: pesquisar pelo nome do cliente
  [Tags]  pesquisa
  Dado que estou na tela boleto unificado
  E seleciono a opção cliente
  E digito o nome do cliente ${CLIENTE.NOME_CLIENTE}
  E clico no botão nome cliente
  E seleciono o nome do cliente
  Então vejo os boletos do cliente

Cenário 3: Verificar soma Total coluna Valor
    [Tags]  fatura
  Dado que estou na tela boleto unificado
  E pesquisa cliente ${CLIENTE.NOME_CLIENTE} 
  Quando seleciono 5 faturas
  Sleep  10s
  E clico no botão gerar boleto unificado
  Então vejo que o total de 5 faturas corresponde a soma das faturas selecionadas
  E clico no botão gerar boleto
