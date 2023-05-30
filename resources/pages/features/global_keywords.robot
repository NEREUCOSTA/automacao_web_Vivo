*** Settings ***
Library    SeleniumLibrary
resource    ../../../resources/main.robot
resource    ../../../resources/data/costumer.robot
Resource    ../shared/setup_teardown.robot


*** Variables ***
&{global}
...  pagina_home=//img[@src='/GlobalOne_TESTE/Images/logo_one.png']
...  menu_one=//span[contains(@class,'fad fa-bars menuTopIcons')]
...  menu_CRM=(//span[@class='pull-left'][contains(.,'CRM')])[1]
...  opcao_cowbay=(//span[contains(@class,'pull-left')])[22]
...  pagina_home=//img[contains(@height,'30')]
...  menu_crm_b2b=//span[contains(.,'CRM-B2B')]
...  opcao_cob_b2b=(//span[@class='pull-left'][contains(.,'COB-B2B')])[1]


*** Keywords ***
vejo a pagina home  
    Wait Until Element Is Visible  ${global.pagina_home}

estou na pagina home
    efetuar login
    vejo a pagina home

clico no menu one
    Wait Until Element Is Visible   ${global.menu_one}
    Click Element                   ${global.menu_one}

clico no submenu CRM
    Wait Until Element Is Visible   ${global.menu_CRM}
    Click Element                   ${global.menu_CRM} 

clico na opcao cobway
    Wait Until Element Is Visible   ${global.opcao_cowbay}
    Click Element                   ${global.opcao_cowbay} 

# clico no submenu CRM-B2B  
#     Wait Until Element Is Visible   ${global.menu_crm_b2b}
#     Click Element                   ${global.menu_crm_b2b}  

# clico na opcao cob-b2b    
#     Wait Until Element Is Visible   ${global.opcao_cob_b2b}
#     Click Element                   ${global.opcao_cob_b2b}