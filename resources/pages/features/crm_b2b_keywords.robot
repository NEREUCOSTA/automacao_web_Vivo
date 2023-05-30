*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot
Resource    cobway_keywords.robot


*** Variables ***
&{b2b}
...  pagina_atendimento=(//span[contains(.,'Atendimento')])[2]
...  selecionar_grupo=(//a[contains(@title,'Selecionar o Grupo')])[11]
...  nome_cliente=//div[@id='divIdClienteNome']


*** Keywords ***
vejo a pagina atendimento cobway
    Wait Until Element Is Visible   ${b2b.pagina_atendimento}

# estou na pagina dados do cliente
#   estou na pagina atendimento cobway
#   clico no botao selecionar grupo
#   vejo os dados do cliente 
  
