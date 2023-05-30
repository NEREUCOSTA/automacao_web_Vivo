*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot



*** Variables ***
&{parcelamento}
...  menu_parcelamento=(//span[@class='pull-left'][contains(.,'Parcelamento')])[1]
...  field_aprovacao=//span[@class='pull-left'][contains(.,'Aprovação')]
...  mensagem_pesquisa_pendentes=//legend[contains(.,'Pesquisa de Negociações Pendentes de Aprovação')]
...  filtro=//*[@id="Filtro"]
...  raiz=//option[@value='IdCliente'][contains(.,'Raiz')]
...  btn_filtrar=//button[@type='button'][contains(.,'Filtrar')]
...  formulario=//div[contains(@class,'grid')]
...  field_bakcoffice_downgrade=//span[@class='pull-left'][contains(.,'BackOffice DownGrade')]
...  btn_visualizar=(//a[@title='Visualizar'])[11]
...  fields_propostas=//legend[@class='legendHeader'][contains(.,'Manutenção de Downgrade')]
...  field_backoffice_parcelamento=//span[@class='pull-left'][contains(.,'BackOffice Parcelamento')]
...  field_atender_chamado=//button[contains(@title,'Atender Chamado')]
...  field_numero_contrato=//th[@class='text-right'][contains(.,'Contrato')]
...  field_negociacao=(//span[contains(.,'Negociação')])[1]
...  field_perfil=//label[contains(.,'B2C')]
...  field_raiz=//input[contains(@name,'IdCliente')]
...  btn_pesquisar=//button[@type='button'][contains(.,'Pesquisar')]
...  btn_selecionar_documento=//html[1]/body[1]/div[1]/div[2]/div[2]/div[1]/div[5]/div[2]/div[1]/div[1]/div[6]/div[2]/table[1]/tbody[1]/tr[2]/td[1]/a[1]
...  btn_selecionar_contrato=//html[1]/body[1]/div[1]/div[2]/div[2]/div[1]/div[6]/div[2]/div[1]/div[1]/div[6]/div[2]/table[1]/tbody[1]/tr[2]/td[2]/a[1]
...  btn_selecionar_calculos=(//a[@href='#'])[63]
...  field_nome=//input[contains(@name,'ContatoNome')]
...  field_telefone=//input[contains(@name,'ContatoTelefone')]
...  field_email=//input[contains(@name,'ContatoEmail')]
...  field_comentario=//textarea[contains(@class,'form-control')]
...  btn_salvar=//button[@type='button'][contains(.,'Salvar')]
...  btn_ok=//button[@data-bb-handler='ok'][contains(.,'OK')]


*** Keywords ***
estou na pagina home global one
    estou na pagina home
    clico no menu one

clico no submenu parcelamento
    Wait Until Element Is Enabled   ${parcelamento.menu_parcelamento}
    Click Element                   ${parcelamento.menu_parcelamento}

clico na opcao aprovacao   
    Wait Until Element Is Enabled   ${parcelamento.field_aprovacao}
    Click Element                   ${parcelamento.field_aprovacao} 

vejo a tela Pesquisa de Negociações Pendentes de Aprovação   
    Wait Until Element Is Enabled   ${parcelamento.mensagem_pesquisa_pendentes} 

estou na tela Pesquisa de Negociações Pendentes de Aprovação
    estou na pagina home global one  
    clico no submenu parcelamento 
    clico na opcao aprovacao

clico no campo filtro  
    Wait Until Element Is Enabled   ${parcelamento.filtro}
    Click Element                   ${parcelamento.filtro} 
    Click Element                   ${parcelamento.raiz} 

clico no botao filtrar  
    Wait Until Element Is Enabled   ${parcelamento.btn_filtrar}
    Click Element                   ${parcelamento.btn_filtrar}   

vejo o formulário de negociacoes pendentes 
    Wait Until Element Is Enabled   ${parcelamento.formulario} 

clico na opcao Backoffice Downgrade      
    Wait Until Element Is Enabled   ${parcelamento.field_bakcoffice_downgrade}
    Click Element                   ${parcelamento.field_bakcoffice_downgrade}

clico no botao visualizar 
    Wait Until Element Is Enabled   ${parcelamento.btn_visualizar}
    Click Element                   ${parcelamento.btn_visualizar}

vejo os dados da proposta do cliente
    Wait Until Element Is Enabled   ${parcelamento.fields_propostas}

clico na opcao Backoffice parcelamento    
    Wait Until Element Is Enabled   ${parcelamento.field_backoffice_parcelamento}
    Click Element                   ${parcelamento.field_backoffice_parcelamento}

clico no botao atender chamado   
    Wait Until Element Is Enabled   ${parcelamento.field_atender_chamado}
    Click Element                   ${parcelamento.field_atender_chamado} 

vejo o numero do contrato do cliente
    Wait Until Element Is Enabled   ${parcelamento.field_numero_contrato}  

# Menu Negociação
clico na opcao negociacao  
    Wait Until Element Is Enabled   ${parcelamento.field_negociacao}
    Click Element                   ${parcelamento.field_negociacao}   

clicar no campo perfil  
    Wait Until Element Is Enabled   ${parcelamento.field_perfil}
    Click Element                   ${parcelamento.field_perfil}   
 
digito no campo raiz
    Wait Until Element Is Enabled   ${parcelamento.field_raiz}
    Click Element                   ${parcelamento.field_raiz}   
    Input Text                      ${parcelamento.field_raiz}  639818318
    Sleep  3s

clicar no botão pesquisar
    Wait Until Element Is Enabled   ${parcelamento.btn_pesquisar}
    Click Element                   ${parcelamento.btn_pesquisar}
    Sleep  1s

clicar no botao selecionar documento 
    Wait Until Element Is Enabled   ${parcelamento.btn_selecionar_documento}
    Click Element                   ${parcelamento.btn_selecionar_documento} 

clicar no botao selecionar contrato 
    Wait Until Element Is Enabled   ${parcelamento.btn_selecionar_contrato}
    Click Element                   ${parcelamento.btn_selecionar_contrato} 
    

clicar no botao selecionar calculos     
    Wait Until Element Is Enabled   ${parcelamento.btn_selecionar_calculos}
    Click Element                   ${parcelamento.btn_selecionar_calculos}

preencher os campos obrigatorios
    Wait Until Element Is Enabled   ${parcelamento.field_nome}
    Click Element                   ${parcelamento.field_nome}
    Input Text                      ${parcelamento.field_nome}  Tina Turner
    Wait Until Element Is Enabled   ${parcelamento.field_telefone}
    Click Element                   ${parcelamento.field_telefone}
    Input Text                      ${parcelamento.field_telefone}  61999879513
    Wait Until Element Is Enabled   ${parcelamento.field_email}
    Click Element                   ${parcelamento.field_email}
    Input Text                      ${parcelamento.field_email}  nereuc@gmail.com
    Wait Until Element Is Enabled   ${parcelamento.field_comentario}
    Click Element                   ${parcelamento.field_comentario}
    Input Text                      ${parcelamento.field_comentario}  globa system

# clicar no botao salvar    
#     Wait Until Element Is Enabled   ${parcelamento.btn_salvar}
#     Click Element                   ${parcelamento.btn_salvar}

clicar no botao ok 
    Wait Until Element Is Enabled   ${parcelamento.btn_ok}
    Click Element                   ${parcelamento.btn_ok}   






   

