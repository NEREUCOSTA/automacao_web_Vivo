*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot


*** Variables ***
&{followUp}
...  btn_followup=//button[@type='button'][contains(.,'Follow UP')]
...  data_agendamento=//input[contains(@name,'DataAgendamento')]
...  contato=//input[contains(@name,'Contato')]
...  telefone=//input[@name='Telefone']
...  motivo_agendamento=//select[contains(@data-mensagem-erro,'IdMotivo')]
...  selecionar_motivo=//option[@value='17'][contains(.,'Acionar Área Comercial')]
...  observacao=//input[contains(@name,'ObservacaoAgendamento')]
...  btn_salvar=//button[contains(@onclick,' CRMService.SaveAgendamento();')]
...  agendamento_salvo=/div[@class='bootbox-body'][contains(.,'Agendamento salvo com sucesso')]
...  btn_ok=(//button[contains(@type,'button')])[17]

*** Keywords ***
clico no botao followup
    Wait Until Element Is Visible   ${followUp.btn_followup}
    Click Element                   ${followUp.btn_followup}

insiro os dados obrigatorios
    Wait Until Element Is Visible   ${followUp.data_agendamento}
    Click Element                   ${followUp.data_agendamento} 
    Input Text                      ${followUp.data_agendamento}  12/05/2023
    Click Element                   ${followUp.contato}
    Input Text                      ${followUp.contato}  Jesus Cristo
    Click Element                   ${followUp.telefone}
    Input Text                      ${followUp.telefone}  61999879513
    Click Element                   ${followUp.motivo_agendamento}
    Click Element                   ${followUp.selecionar_motivo}
    Click Element                   ${followUp.observacao}
    Input Text                      ${followUp.observacao}  vamos globalizar isso tudo
    Click Element                   ${followUp.btn_salvar}
    Sleep  5s
    Click Element                   ${followUp.btn_ok}

vejo a mensagem agendamento salvo com sucesso
    Wait Until Element Is Visible   ${followUp.agendamento_salvo}   

    

  
