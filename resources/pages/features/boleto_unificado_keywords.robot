*** Settings ***
Library    SeleniumLibrary
Library    String
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot
resource  ${EXECDIR}/resources/pages/shared/setup_teadorwn.robot


*** Variables ***
&{pesquisa}

#...  btn_entrar=//button[@id="btn-entrar"]
...  opcao_cliente=//a[@id="NomeCliente"]
...  campo_cliente=//input[@id="NomeCliente"]
...  boleto_unificado=//legend[@class="legendHeader"][contains(text(),'Boleto Unificado')]
...  btn_nome_cliente=//button[@id="btnNomeCliente"]
...  campo_fatura=(//div[contains(.,'Faturas')])[21]
...  nome_cliente=//option[@value='0']
...  btn_gerar_boleto=//a[@type='button']/span[contains(text(), 'Gerar Boleto Unificado')]
...  btn_gerar_pdf=(//span[contains(.,'Gerar')])[2]



*** Keywords ***
vejo a tela boleto unificado
    Wait Until Element Is Visible     ${pesquisa.boleto_unificado}

seleciono a opção cliente
    Wait Until Element Is Visible     ${pesquisa.opcao_cliente}
    Click Element                     ${pesquisa.opcao_cliente}  

clico no botão nome cliente
    Wait Until Element Is Visible     ${pesquisa.btn_nome_cliente}
    Click Element                     ${pesquisa.btn_nome_cliente}

digito o nome do cliente ${nome_cliente}
    Wait Until Element Is Visible     ${pesquisa.campo_cliente}
    Input Text                        ${pesquisa.campo_cliente}  ${nome_cliente}

seleciono o nome do cliente  
    Wait Until Element Is Visible     ${pesquisa.nome_cliente}  10s
    Click Element                     ${pesquisa.nome_cliente}

vejo os boletos do cliente
    Wait Until Element Is Enabled  ${pesquisa.campo_fatura}

estou na tela boleto unificado
    acesso a tela boleto unificado
    vejo a tela boleto unificado

pesquisa cliente ${nome_cliente}
    seleciono a opção cliente
    digito o nome do cliente ${nome_cliente}
    clico no botão nome cliente
    seleciono o nome do cliente

seleciono ${quantidade_fatura} faturas
    ${indice}  Set Variable  2
    FOR  ${i}  IN RANGE  ${quantidade_fatura}
        Wait Until Element Is Visible     xpath=(//span[@class='dx-checkbox-icon'])[${indice}]
        Click Element                     xpath=(//span[@class='dx-checkbox-icon'])[${indice}]
        ${indice}  Evaluate  ${indice}+${1}
    END 

clico no botão gerar boleto unificado
    Wait Until Element Is Visible     ${pesquisa.btn_gerar_boleto}
    Click Element                     ${pesquisa.btn_gerar_boleto}

vejo que o total de ${quantidade_fatura} faturas corresponde a soma das faturas selecionadas
    ${soma_total_calculada}  Set Variable  0
    ${indice}  Set Variable  2
    FOR  ${i}  IN RANGE  ${quantidade_fatura}
        Wait Until Element Is Visible    xpath=(//td[contains(@aria-describedby,'dx-col-20')])[${indice}]
        ${valor}  Get Text  xpath=(//td[contains(@aria-describedby,'dx-col-20')])[${indice}]
        ${valor}  Replace String  ${valor}  ,  .
        ${soma_total_calculada}  Evaluate  ${soma_total_calculada}+${valor}
        ${indice}  Evaluate  ${indice}+${1}
    END
    ${soma_total_tela}  Get Text  (//div[contains(@class,'dx-datagrid-summary-item dx-datagrid-text-content')])[4]
    ${soma_total_tela}  Replace String  ${soma_total_tela}  ,  .
    Should Be Equal As Strings  ${soma_total_calculada}  ${soma_total_tela}

clico no botão gerar boleto
    Wait Until Element Is Visible     ${pesquisa.btn_gerar_pdf}
    Click Element                     ${pesquisa.btn_gerar_pdf}
    Sleep  10s
    
