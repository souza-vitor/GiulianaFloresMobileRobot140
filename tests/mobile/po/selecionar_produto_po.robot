*** Settings ***
Resource    ../../../pages/base_page.robot


*** Variables ***
${SAUCE_USERNAME}    oauth-vitorhugops32-d60cc
${REMOTE_URL}    http://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:80/wd/hub


*** Test Cases ***
Selecionar cesta
    Open Application    ${REMOTE_URL}    
    ...    platformName=Android    
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=Galaxy S9 FHD GoogleAPI Emulator    
    ...    appium:deviceOrientation=portrait    
    ...    appium:app=storage:filename=GiulianaFlores_2.0.75_APKPure.apk    
    ...    appium:appPackage=br.com.giulianaflores.android    
    ...    appium:appActivity=br.com.giulianaflores.android.MainActivity
    ...    browserName=    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:nativeWebScreenshot=${True}    
    #...    sauce:options=[object Object]    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}
    # Fim da configuração do emulador/aparelho fisico e da inicialização    
    # Início dos passos da automação
    Fechar ad
    Clicar no botao entrar
    Preencher o campo login
    Preencher o campo senha
    Clicar no botao login entrar
    Selecionar endereco
    Clicar no botao aplicar
    Preencher o campo pesquisa
    Clicar no item da pesquisa
    Verificar o titulo do item
    Verificar o preco do item
    Fazer a rolagem da tela
    Clicar no botao continuar
    Selecionar o frete
    Verificar preco item carrinho