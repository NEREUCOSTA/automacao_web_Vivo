*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot


*** Variables ***
&{palitagem_b2b}
...  menu_crm_b2b=//span[@class='pull-left'][contains(.,'CRM-B2B')]
...  field_cob_b2b=(//span[@class='pull-left'][contains(.,'COB-B2B')])[1]
...  btn_palitagem=//button[@type='button'][contains(.,'Palitagem')]
...  check_cobranca=(//span[contains(@class,'dx-checkbox-icon')])[2]
...  area_responsavel=//select[@id='IdAreaOfensoraDropdown888']
...  selecionar_area=//*[@id="IdAreaOfensoraDropdown888"]/option[2]
...  selecionar_sub_status=//select[contains(@id,'IdPalitagemDropdown888')]
...  clicar_sub_status=//option[@value='1'][contains(.,'NAO CONFIRMA PID')]
...  selecionar_data=//select[contains(@data-mensagem-erro,'DatCorte')]
...  clicar_data=//*[@id="DatCorte"]/option[1]
...  field_motivo=//input[contains(@id,'MotivoPalitagemExcell')]
...  btn_gravar=//button[@class='btn btn-success BtnPalitagem'][contains(.,'Gravar')]
...  cobranca_salva=(//span[contains(@class,'dx-checkbox-icon')])[2]
...  mensagem_salva=//div[@class='bootbox-body'][contains(.,'Palitagem salva com sucesso')]


*** Keywords ***

estou na pagina dados do cliente b2b
    estou na pagina home
    clico no menu one
    clico no submenu CRM-B2B
    clico na opcao cob-b2b
    clico no botao selecionar grupo
    
clico no submenu CRM-B2B  
    Wait Until Element Is Visible   ${palitagem_b2b.menu_crm_b2b}
    Click Element                   ${palitagem_b2b.menu_crm_b2b}  

clico na opcao cob-b2b    
    Wait Until Element Is Visible   ${palitagem_b2b.field_cob_b2b}
    Click Element                   ${palitagem_b2b.field_cob_b2b}

clico no botao palitagem b2b 
    Wait Until Element Is Enabled   ${palitagem_b2b.btn_palitagem}
    Click Element                   ${palitagem_b2b.btn_palitagem}

insiro os dados obrigatorios b2b
    Wait Until Element Is Visible   ${palitagem_b2b.check_cobranca}
    Click Element                   ${palitagem_b2b.check_cobranca} 
    Wait Until Element Is Visible   ${palitagem_b2b.area_responsavel}
    Click Element                   ${palitagem_b2b.area_responsavel}
    Wait Until Element Is Visible   ${palitagem_b2b.selecionar_area}
    Click Element                   ${palitagem_b2b.selecionar_area}
    Wait Until Element Is Visible   ${palitagem_b2b.selecionar_sub_status}
    Click Element                   ${palitagem_b2b.selecionar_sub_status}
    Click Element                   ${palitagem_b2b.clicar_sub_status}
    Wait Until Element Is Visible   ${palitagem_b2b.selecionar_data}
    Click Element                   ${palitagem_b2b.selecionar_data}
    Click Element                   ${palitagem_b2b.clicar_data}
    Wait Until Element Is Visible   ${palitagem_b2b.field_motivo}
    Click Element                   ${palitagem_b2b.field_motivo}
    Input Text                      ${palitagem_b2b.field_motivo}  VIVO E GLOBAL
    Wait Until Element Is Visible   ${palitagem_b2b.btn_gravar}
    Click Element                   ${palitagem_b2b.btn_gravar}
    Sleep  5s

vejo a mensagem palitagem salvo com sucesso
     Wait Until Element Is Visible   ${palitagem_b2b.mensagem_salva}
    
    