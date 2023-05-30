*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: selecionar a opcão followUp
  [Tags]  1  
  Dado que estou na pagina dados do cliente
  Quando clico no botao followup one
  E insiro os dados obrigatorios
  E clico no botao salvar
  Então vejo a mensagem agendamento salvo com sucesso
