*** Settings ***
Library    SeleniumLibrary
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot


*** Variables ***
&{login}
...  field_login=//input[contains(@type,'text')]
...  field_password=//input[contains(@type,'tel')]
...  pagina_home=//img[contains(@height,'30')]


*** Keywords ***
estou na pagina do portal globalOne
    Wait Until Element Is Visible    ${login.field_login}

digito o login do usuario
    Wait Until Element Is Visible     ${login.field_login}
    Input Text  ${login.field_login}  ${cliente.user} 

digito a senha
    Wait Until Element Is Visible     ${login.field_password}
    Input Text  ${login.field_password}  ${cliente.password}   

chamo o metodo enviar
    Execute Javascript  LocalLogin.Methods.Enviar();


    


