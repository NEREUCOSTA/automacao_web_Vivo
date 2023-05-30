*** Settings ***
resource    ../../../resources/main.robot
Resource    ../../../resources/pages/shared/setup_teardown.robot

Test Setup       abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: Atendimento ao cliente
  [Tags]  1  
  Dado que vejo a pagina atendimento
  Quando clico no botao grupo
  Então vejo o dados do cliente

Cenário 2: Clicar na opção palitagem
  Dado que estou na pagina atendimento
  Quando clico no botao palitagewm
  Então vejo os dados da consulta
