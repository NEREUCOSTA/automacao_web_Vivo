*** Settings ***
Library    SeleniumLibrary
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot


*** Variables ***
&{consulta}
...  menu_consulta_integrada=(//span[@class='pull-left'][contains(.,'Consulta Integrada')])[1]
...  opcao_consulta_integrada=(//span[contains(.,'Consulta Integrada')])[2]
...  pagina_consulta_integrada=//span[contains(@id,'lblConsulta')]
...  btn_raiz=//label[@for='radioRaiz'][contains(.,'Raiz')]
...  btn_b2c=//label[@for='radioB2C'][contains(.,'B2C')]
...  field_raiz=//input[contains(@name,'IdCliente')]
...  btn_pesquisar=(//span[contains(@class,'fad fa-search')])[1]
...  grid=//div[contains(@id,'divGridAging')]


*** Keywords ***
estou na pagina home global one
    estou na pagina home
    clico no menu one

clico no menu consulta integrada  
    Wait Until Element Is Visible  ${consulta.menu_consulta_integrada}
    Click Element                  ${consulta.menu_consulta_integrada}

clico na opcao consulta integrada
    Wait Until Element Is Visible  ${consulta.opcao_consulta_integrada}
    Click Element                  ${consulta.opcao_consulta_integrada}  

# vejo a pagina consulta integrada    
#     Wait Until Element Is Visible  ${consulta.opcao_consulta_integrada}

estou na pagina consulta integrada
    estou na pagina home global one
    Sleep  5s
    clico no menu consulta integrada
    clico na opcao consulta integrada
    #vejo a pagina consulta integrada

clico no botao tipo de consulta raiz  
    Wait Until Element Is Visible  ${consulta.btn_raiz}
    Click Element                  ${consulta.btn_raiz}   

clico no botao perfil b2c
    Wait Until Element Is Visible  ${consulta.btn_b2c}
    Click Element                  ${consulta.btn_b2c} 

digito um valor no campo raiz
    Wait Until Element Is Visible  ${consulta.field_raiz}
    Click Element                  ${consulta.field_raiz} 
    Input Text                     ${consulta.field_raiz}   1

clico no botao pesquisar    
    Wait Until Element Is Visible  ${consulta.btn_pesquisar}
    Click Element                  ${consulta.btn_pesquisar} 

vejo um grid faixa de atraso      
      Wait Until Element Is Visible  ${consulta.grid}  



