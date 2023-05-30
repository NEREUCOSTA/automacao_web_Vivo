*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot
Resource    global_keywords.robot


*** Variables ***
&{cobway}
...  pagina_atendimento=(//span[contains(.,'Atendimento')])[2]
...  selecionar_grupo=(//a[contains(@title,'Selecionar o Grupo')])[11]
...  nome_cliente=//div[@id='divIdClienteNome']
...  btn_palitagem=//button[@type='button'][contains(.,'Palitagem')]


*** Keywords ***
vejo a pagina atendimento cobway
    Wait Until Element Is Visible   ${cobway.pagina_atendimento}

estou na pagina atendimento cobway
   estou na pagina home
   clico no menu one
   clico no submenu CRM
   clico na opcao cobway
   vejo a pagina atendimento cobway

clico no botao selecionar grupo
    Wait Until Element Is Enabled   ${cobway.selecionar_grupo}
    Click Element                   ${cobway.selecionar_grupo}

vejo os dados do cliente
    Wait Until Element Is Visible       ${cobway.nome_cliente}

estou na pagina dados do cliente
  estou na pagina atendimento cobway
  clico no botao selecionar grupo
  vejo os dados do cliente       



