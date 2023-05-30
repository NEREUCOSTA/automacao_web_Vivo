*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: Realizar Login no Portal da globalOne
  [Tags]  1  smoke
  Dado que estou na pagina do portal globalOne
  Quando digito o login do usuario
  E digito a senha
  E chamo o metodo enviar
  Então vejo a pagina home
 