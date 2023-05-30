*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot


*** Variables ***
${menuTopIcons}                  //span[contains(@class,'fad fa-bars menuTopIcons')]
${menuArrecadacao}               //span[@class='pull-left'][contains(.,'Arrecadação')]
${parametConfig}                 //span[@class='pull-left'][contains(.,'Parâmetros configuração')] 
${codigoArrecadacao}             select2-CdTiposArrecadacao-container 
${preencherCodigoArrecadacao}    //input[contains(@class,'select2-search__field')]
${clicarConsultar}               btnPesquisarArrecadacao 
${botaoNovo}                     btnNovoArrecadacao   
${codigoArrecadao}               CdTiposArrecadacao 
${tiposArrecadao}                DsTiposArrecadacao
${botaoSalvar}                   btnSaveArrecadacao 
${editarArrecadacao}             //*[@id="Btn_Editar_gridArrecadacao_12_CASALOTRICA_21122021155306_2"] 
${bancos}                        //label[@for='tab-formBancos'][contains(.,'Bancos')]  
${selecionarCodigoBancoEditar}         select2-CdBanco-container
${preencherCodigoBancoEditar}          //input[contains(@class,'select2-search__field')]  
${novoBanco}                     btnNovoBancos
${preencherCodigoBanco}          CdBanco  
${PreencherNomeBanco}            NmBanco
        

*** Keywords ***
Dado que eu esteja na tela parametros configuracao em arrecadacao
    Click Element    locator=${menuTopIcons}
    Click Element    locator=${menuArrecadacao}
    Click Element    locator=${parametConfig}    
  
Quando seleciono o codigo de arrecadacao
     Click Element    locator=${codigoArrecadacao} 
     Click Element    locator=${preencherCodigoArrecadacao}
     Input Text       locator=${preencherCodigoArrecadacao}  text=Casa Loterica
     Press Keys       ${preencherCodigoArrecadacao}          RETURN
E clico em consultar
     Click Element    locator=${clicarConsultar} 

Entao valido que apareceu o mesmo codigo no resultado da consulta
     Wait Until Page Contains    text=CASA LOTÉRICA


Quando clico no botao Novo
    Click Element    locator=${botaoNovo}
E preencho o campo codigo de arrecadacao
    Input Text    locator=${codigoArrecadao}    text=07
E preencho o campo Tipos de arrecadacao
    Input Text    locator=${tiposArrecadao}    text=Tipo de arrecadacao automacao
Quando clico em salvar
    Click Element    locator=${botaoSalvar}

Entao valido que foi salvo com sucesso  
    Wait Until Page Contains    text=Arrecadação cadastrada com sucesso!   

Quando clico em no lapis opcao de editar
    Click Element    locator=${editarArrecadacao} 
E altero as informacoes 
    Input Text    locator=${tiposArrecadao}    text=Teste Alter

E clico em salvar
    Click Element    locator=btnSaveArrecadacao
  
Entao valido que a mensagem Arrecadação atualizada com sucesso!
    Wait Until Page Contains    text=Arrecadação atualizada com sucesso! 


Quando clico em Bancos
    Click Element    locator=${bancos}

E seleciono o codigo do banco
    Click Element    locator=${selecionarCodigoBancoEditar}
    Click Element    locator=${preencherCodigoBancoEditar} 
    Input Text       locator=${preencherCodigoBancoEditar}     text=Banco do brasil
    Press Keys       ${preencherCodigoBancoEditar}      RETURN
Entao valido que apareceu codigo do banco no resultado da consulta
    Wait Until Page Contains    text=001 

E clico no botao novo bancos
    Click Element    locator=${novoBanco}     

E preencho o codigo do banco
    Input Text    locator=${preencherCodigoBanco}     text=008

E preencho o nome do banco
    Input Text    locator=${PreencherNomeBanco}     text=Banco Nome Teste Automacao

Quando clico em Salvar banco
    Click Element    locator=btnSaveBancos




