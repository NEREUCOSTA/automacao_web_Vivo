*** Settings ***
resource    ../../../resources/main.robot
Resource    ../../../resources/pages/shared/setup_teardown.robot
Resource    ../../../resources/pages/features/arrecadacaoKeywords.robot

Test Setup       abrir site
Suite Teardown   fechar navegador

*** Test Case ***
Cenário 1: Validar filtro código de arrecadação
  [Tags]  Arrecadacao  FiltroCodigoArrecadacao  
  [Documentation]
  Dado que eu esteja na tela parametros configuracao em arrecadacao
  Quando seleciono o codigo de arrecadacao
  E clico em consultar
  Entao valido que apareceu o mesmo codigo no resultado da consulta


Cenário 2: Validar novo cadastro de arrecadação 
  [Tags]  Arrecadacao  CadastroArrecadacao  
  [Documentation]
  Dado que eu esteja na tela parametros configuracao em arrecadacao
  Quando clico no botao Novo
  E preencho o campo codigo de arrecadacao
  E preencho o campo Tipos de arrecadacao
  Quando clico em salvar
  Entao valido que foi salvo com sucesso

Cenário 3: Validar editar arrecadação 
  [Tags]  Arrecadacao  EditarArrecadacao  
  [Documentation]      
  Dado que eu esteja na tela parametros configuracao em arrecadacao
  Quando clico em no lapis opcao de editar
  E altero as informacoes 
  E clico em salvar
  Entao valido que a mensagem Arrecadação atualizada com sucesso!

Cenário 4: Validar filtro código do banco
  [Tags]  Bancos  FiltroCodigoBanco  
  [Documentation]      
  Dado que eu esteja na tela parametros configuracao em arrecadacao
  Quando clico em Bancos
  E seleciono o codigo do banco
  E clico em consultar
  Entao valido que apareceu codigo do banco no resultado da consulta


Cenário 5: validar cadastro de bancos
  [Tags]  Bancos  CadastroBanco  
  [Documentation]      
  Dado que eu esteja na tela parametros configuracao em arrecadacao
  Quando clico em Bancos
  E clico no botao novo bancos
  E preencho o codigo do banco
  E preencho o nome do banco
  Quando clico em Salvar banco
