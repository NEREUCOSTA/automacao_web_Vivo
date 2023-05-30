*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador


*** Test Case ***

Cenário 1: selecionar a opcao Palitagem(agendamento de pagamento)
  Dado que estou na pagina dados do cliente b2b
  Quando clico no botao palitagem b2b
  E seleciono uma cobranca
  E insiro os dados obrigatorios b2b
  E clico no botao salvar
  Então vejo a mensagem palitagem salvo com sucesso