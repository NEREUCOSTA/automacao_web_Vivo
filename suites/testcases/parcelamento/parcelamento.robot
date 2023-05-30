*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: Acessar o menu parcelamento
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu one
  E clico no submenu parcelamento
  E clico na opcao aprovacao
  Então vejo a tela Pesquisa de Negociações Pendentes de Aprovação

Cenário 2: Realizar filtro de pesquisa
   [Tags]  2
    Dado que estou na tela Pesquisa de Negociações Pendentes de Aprovação
    Quando clico no campo filtro
    E clico no botao filtrar
    Sleep  5S
    Então vejo o formulário de negociacoes pendentes

Cenário 3: Acessar formulario Backoffice - Downgrade 
    [Tags]  3
    Dado que estou na pagina home
    Quando clico no menu one
    E clico no submenu parcelamento
    E clico na opcao Backoffice Downgrade
    E clico no botao visualizar
    Então vejo os dados da proposta do cliente  

Cenário 4: Acessar Backoffice - parcelamento  
    [Tags]  4
    Dado que estou na pagina home
    Quando clico no menu one
    E clico no submenu parcelamento
    E clico na opcao Backoffice parcelamento
    E clico no botao atender chamado
    Sleep  5s
    Então vejo o numero do contrato do cliente 
    Sleep  3s

Cenário 5: negociação 
    [Tags]  5
    Dado que estou na pagina home
    Quando clico no menu one
    E clico no submenu parcelamento
    E clico na opcao negociacao
    E clicar no campo perfil
    E digito no campo raiz
    E clicar no botão pesquisar
    E clicar no botao selecionar documento
    E clicar no botao selecionar contrato
    E clicar no botao selecionar calculos
    E preencher os campos obrigatorios
    #E clicar no botao salvar
    #Então vejo a mensagem registro salvo com sucesso
    #E clicar no botao ok
    Sleep  2s



