*** Settings ***
Library    SeleniumLibrary
resource    ../../../resources/main.robot
resource    ../../../resources/data/costumer.robot
Resource    ../shared/setup_teardown.robot


*** Variables ***
&{juridico}
...  sub_menu_juridico=(//span[@class='pull-left'][contains(.,'Jurídico')])[1]
...  field_juridico=(//span[contains(.,'Jurídico')])[2]
...  tela_consulta_geral=//legend[@class='legendHeader'][contains(.,'Consulta Geral')]
...  field_filtro=//input[contains(@data-filter-autocomplete,'true')]
...  field_raiz=//span[@class='spanFilter'][contains(.,'@Raiz')]
...  id_cliente=//span[contains(.,'CRM-B2B')]
...  nome_cliente_id=//a[@class='dropdown-item'][contains(.,'18996247 - BLUE TELECOMUNICAÇÕES')]
...  mensagem=//b[contains(.,'Quantidade de Processos:')]
...  processo=//div[@dir='ltr'][contains(.,'Processos')]
...  menu_aprovacoes=//span[@class='labelSpan'][contains(.,'Aprovações Finanças')]
...  btn_visualizar_interacao=(//a[contains(@title,'Visualizar Interação')])[2]
...  field_cobranca=//input[contains(@name,'Operacao')]
...  btn_pesquisar=//span[contains(@class,'fad fa-search')]

*** Keywords ***
estou na pagina home global one
    estou na pagina home
    clico no menu one

clico no submenu juridico
    Wait Until Element Is Visible   ${juridico.sub_menu_juridico}  
    Click Element                   ${juridico.sub_menu_juridico}                  

clico na opcao juridico
    Wait Until Element Is Visible   ${juridico.field_juridico}  
    Click Element                   ${juridico.field_juridico}   

vejo a tela consulta geral
    Wait Until Element Is Visible   ${juridico.tela_consulta_geral}  

estou na Tela consulta geral 
    estou na pagina home
    clico no menu one  
    clico no submenu juridico  
    clico na opcao juridico

seleciono uma opcao no campo filtro 
    Wait Until Element Is Visible   ${juridico.field_filtro}  
    Click Element                   ${juridico.field_filtro}
    Wait Until Element Is Visible   ${juridico.processo}  10s
    Input Text                      ${juridico.field_filtro}  @Raiz
    Sleep  2s
    Press Keys                      ${juridico.field_filtro}  ENTER
    
digito um Id de cliente 
    Wait Until Element Is Visible   ${juridico.processo}  10s
    Wait Until Element Is Visible   ${juridico.field_filtro}  
    Click Element                   ${juridico.field_filtro}  
    Input Password                  ${juridico.field_filtro}  18996247

clico no nome do cliente
    Wait Until Element Is Visible   ${juridico.nome_cliente_id}  
    Click Element                   ${juridico.nome_cliente_id}  

clico no botao pesquisar1 
    Wait Until Element Is Visible   ${juridico.btn_pesquisar}  
    Click Element                   ${juridico.btn_pesquisar} 

vejo os processos do cliente 
    Wait Until Element Is Visible   ${juridico.mensagem}   

seleciono o cliente   
    estou na Tela consulta geral
    seleciono uma opcao no campo filtro
    digito um Id de cliente 
    clico no nome do cliente
    clico no botao pesquisar
    vejo os processos do cliente  

seleciono o menu aprovações financias 
    Wait Until Element Is Visible   ${juridico.menu_aprovacoes}  
    Click Element                   ${juridico.menu_aprovacoes}  

clico no botao visualizar interacao 
    Wait Until Element Is Visible   ${juridico.btn_visualizar_interacao}  
    Click Element                   ${juridico.btn_visualizar_interacao}  

vejo a operacao cobranca corporativa
    Wait Until Element Is Visible   ${juridico.field_cobranca}


