*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot


*** Variables ***
&{palitagem}
...  nome_cliente=//div[@id='divIdClienteNome']
...  btn_palitagem=//button[@type='button'][contains(.,'Palitagem')]
...  check_cobranca=(//span[contains(@class,'dx-checkbox-icon')])[5]
...  area_responsavel=//select[contains(@onchange,'CRMService.AreaOfensoraChange(888)')]
...  selecionar_area=//*[@id="IdAreaOfensoraDropdown888"]/option[2]
...  sub_status=//select[contains(@id,'IdPalitagemDropdown888')]
...  selecionar_sub_status=//*[@id="IdPalitagemDropdown888"]/option[2]
...  data_corte=//select[contains(@name,'DatCorte')]
...  selecionar_data=//*[@id="DatCorte"]/option[1]
...  field_motivo=//input[contains(@size,'20')]
...  btn_gravar=//button[@class='btn btn-success BtnPalitagem'][contains(.,'Gravar')]
...  cobranca_salva=(//span[contains(@class,'dx-checkbox-icon')])[2]


*** Keywords ***
  
clico no botao palitagem 
    Wait Until Element Is Enabled   ${palitagem.btn_palitagem}
    Click Element                   ${palitagem.btn_palitagem}

seleciono uma cobranca
    Wait Until Element Is Enabled   ${palitagem.check_cobranca}
    Click Element                   ${palitagem.check_cobranca}   

seleciono uma area reponsavel  
    Wait Until Element Is Enabled   ${palitagem.area_responsavel}
    Click Element                   ${palitagem.area_responsavel}
    Click Element                   ${palitagem.selecionar_area}

seleciono um sub status
    Wait Until Element Is Enabled   ${palitagem.sub_status}
    Click Element                   ${palitagem.sub_status}
    Click Element                   ${palitagem.selecionar_sub_status} 

seleciono uma data corte
    Wait Until Element Is Enabled   ${palitagem.data_corte}
    Click Element                   ${palitagem.data_corte}
    Click Element                   ${palitagem.selecionar_data} 

digito o motivo
    Wait Until Element Is Enabled   ${palitagem.field_motivo}
    Click Element                   ${palitagem.field_motivo}
    Input Text                      ${palitagem.field_motivo}  Deus é bom o tempo todo

clico no botao salvar
    Wait Until Element Is Enabled   ${palitagem.btn_gravar}
    Click Element                   ${palitagem.btn_gravar}

sera adicionada uma nova cobranca 
    Wait Until Element Is Enabled   ${palitagem.cobranca_salva}   