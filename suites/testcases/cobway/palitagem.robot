*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador


*** Test Case ***

Cenário 1: selecionar a opcao Palitagem(agendamento de pagamento)
  Dado que estou na pagina dados do cliente
  Quando clico no botao palitagem
  E seleciono uma cobranca
  E seleciono uma area reponsavel
  E seleciono um sub status
  E seleciono uma data corte
  E digito o motivo
  E clico no botao salvar
  Então sera adicionada uma nova cobranca