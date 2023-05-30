*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: selecionar a opcão followUp b2b
  [Tags]  1  
  Dado que estou na pagina dados do cliente via b2b
  E clico no botao selecionar grupo b2b
  Quando clico no botao followup b2b
  E insiro os dados obrigatorios b2b2
  E clico no botao salvar
  Então vejo a mensagem agendamento salvo com sucesso