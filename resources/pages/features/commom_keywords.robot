
*** Variables ***
&{menu}
...  campo_menu=//button[@id="menu-toggle-btn"]
...  menu_financas=//a[@id="146"]
...  opcao_boleto_one=//a[@id="117"]

*** Keywords ***
clico no menu geral  
    Wait Until Element Is Visible     ${menu.campo_menu}  
    Click Element                     ${menu.campo_menu}

seleciono a opção financas
    Wait Until Element Is Visible     ${menu.menu_financas}
    Click Element                     ${menu.menu_financas}

seleciono a opção boleto one
    Wait Until Element Is Visible     ${menu.opcao_boleto_one}
    Click Element                     ${menu.opcao_boleto_one}    

acesso a tela boleto unificado
    clico no menu geral
    seleciono a opção financas
    seleciono a opção boleto one
   
