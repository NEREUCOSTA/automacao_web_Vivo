*** Settings ***
resource  ${EXECDIR}/resources/main.robot


*** Variables ***
${OPTIONS_CHROME}    add_experimental_option("excludeSwitches",["enable-logging"]);add_argument("--disable-popup-blocking");add_argument("--no-sandbox");add_argument("--disable-web-security"); add_argument("--ignore-certificate-errors");add_argument("--allow-insecure-localhost");add_argument("--allow-cross-origin-auth-prompt")
${BROWSER}  chrome

*** Keywords ***
abrir site
  Open Browser  http://10.128.222.26/GlobalOne_Homolog  ${BROWSER}  options=${OPTIONS_CHROME}
  Maximize Browser Window
  Sleep  5s

fechar navegador
  Close All Browsers

efetuar login
    estou na pagina do portal globalOne
    digito o login do usuario
    digito a senha
    chamo o metodo enviar
   

 
 