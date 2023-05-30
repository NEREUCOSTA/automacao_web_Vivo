*** Settings ***
Library    SeleniumLibrary
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot


*** Variables ***
&{followUp_b2b}
...  submenu_crm=//span[@class='pull-left'][contains(.,'CRM-B2B')]
...  field_cob_b2b=//*[@id="192"]/span[1]
...  selecionar_grupo=(//a[@href='#'])[100]
...  btn_followUp=//button[@type='button'][contains(.,'Follow UP')]
...  data_agendamento=//input[contains(@name,'DataAgendamento')]
...  contato=//input[contains(@name,'Contato')]
...  telefone=//input[@name='Telefone']
...  motivo_agendamento=//select[contains(@data-mensagem-erro,'IdMotivo')]
...  selecionar_motivo=//*[@id="IdMotivo"]/option[3]
...  observacao=//input[contains(@name,'ObservacaoAgendamento')]
...  btn_salvar=//button[@type="button"][@onclick=" B2BService.SaveAgendamento();"][contains(.,"Salvar")]
...  agendamento_salvo=/div[@class='bootbox-body'][contains(.,'Agendamento salvo com sucesso')]
...  btn_ok=(//button[contains(@type,'button')])[17]

*** Keywords ***
estou na pagina dados do cliente via b2b
    estou na pagina home
    clico no menu one
    clico no submenu CRM-B2B
    clico na opcao cob-b2b
    
   
clico no submenu CRM-B2B 
    Wait Until Element Is Visible   ${followUp_b2b.submenu_crm}
    Click Element                   ${followUp_b2b.submenu_crm}  

clico na opcao cob-b2b
    Wait Until Element Is Visible   ${followUp_b2b.field_cob_b2b}
    Click Element                   ${followUp_b2b.field_cob_b2b}  

clico no botao selecionar grupo b2b   
    Wait Until Element Is Visible   ${followUp_b2b.selecionar_grupo}
    Click Element                   ${followUp_b2b.selecionar_grupo} 

clico no botao followup b2b
    Wait Until Element Is Visible   ${followUp_b2b.btn_followUp}  15s
    Click Element                   ${followUp_b2b.btn_followUp}  

insiro os dados obrigatorios b2b2 
   Wait Until Element Is Visible   ${followUp_b2b.data_agendamento}
    Click Element                   ${followUp_b2b.data_agendamento} 
    Input Text                      ${followUp_b2b.data_agendamento}  12/05/2023
    Click Element                   ${followUp_b2b.contato}
    Input Text                      ${followUp_b2b.contato}  GLOBAL E VIVO
    Click Element                   ${followUp_b2b.telefone}
    Input Text                      ${followUp_b2b.telefone}   61999879513
    Click Element                   ${followUp_b2b.motivo_agendamento}
    Click Element                   ${followUp_b2b.selecionar_motivo}
    Click Element                   ${followUp_b2b.observacao}
    Input Text                      ${followUp_b2b.observacao}  vamos globalizar isso tudo
    Click Element                   ${followUp_b2b.btn_salvar}
    Click Element                   ${followUp_b2b.btn_ok}