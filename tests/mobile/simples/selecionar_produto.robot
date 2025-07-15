*** Settings ***
Library    AppiumLibrary
Test Teardown    Close Application

*** Variables ***
${SAUCE_USERNAME}    oauth-vitorhugops32-d60cc
${REMOTE_URL}    http://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:80/wd/hub

*** Test Cases ***
Selecionar Cesta
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
    ${fecha_ad} =    Set Variable     xpath=/hierarchy/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageView
    Wait Until Element Is Visible    ${fecha_ad}    3s
    Click Element    ${fecha_ad}

    ${botao_entrar} =    Set Variable     accessibility_id=Entrar
    Click Element    ${botao_entrar}

    ${login_edittext} =    Set Variable    xpath=(//android.widget.EditText)[1]
    Wait Until Element Is Visible    ${login_edittext}    10s
    Click Element    ${login_edittext}
    Input Text    ${login_edittext}    nashton.braxley@dsitip.com

    ${senha_edittext} =    Set Variable    xpath=(//android.widget.EditText)[2]
    Click Element    ${senha_edittext}
    Input Text    ${senha_edittext}    SempreAuto10!

    ${login_botao_entrar} =    Set Variable     accessibility_id=Entrar
    Click Element    ${login_botao_entrar}

    #Sleep    2s
    ${selecionar_endereco} =    Set Variable     xpath=//android.view.ViewGroup[starts-with(@content-desc, "Endereço Principal")]
    Wait Until Element Is Visible    ${selecionar_endereco}    15s
    Click Element    ${selecionar_endereco}

    ${endereco_aplicar} =    Set Variable     xpath=(//android.view.ViewGroup[@content-desc="Aplicar"])[2]
    Wait Until Element Is Visible    ${endereco_aplicar}    5s
    Click Element    ${endereco_aplicar}

    ${campo_pesquisa} =    Set Variable     xpath=//android.widget.EditText[@text="BUSCAR NA GIULIANA FLORES"]
    Wait Until Element Is Visible    ${campo_pesquisa}    5s
    Click Element    ${campo_pesquisa}
    Input Text    ${campo_pesquisa}    cesta de café da manhã amor
    Press Keycode    66

    ${pesquisa_item} =    Set Variable    xpath=//android.widget.TextView[@text="Cesta de Café da Manhã Amor"]
    Wait Until Element Is Visible    ${pesquisa_item}    10s
    Click Element    ${pesquisa_item}

    ${item_titulo} =    Set Variable     xpath=(//android.widget.TextView[@text="Cesta de Café da Manhã Amor"])[1]
    Wait Until Element Is Visible    ${item_titulo}    5s
    Element Text Should Be    ${item_titulo}    Cesta de Café da Manhã Amor
    ${item_preco} =    Set Variable     xpath=//android.widget.TextView[@text="R$ 299,99"]
    Element Text Should Be    ${item_preco}    R$ 299,99

    Swipe    ${643}    ${1525}    ${635}    ${1053}

    ${botao_continuar} =    Set Variable     accessibility_id=CONTINUAR
    Click Element    ${botao_continuar}

    ${selecionar_frete} =    Set Variable     xpath=//android.widget.TextView[@resource-id="undefined.day_2025-07-18.text"]
    Wait Until Element Is Visible    ${selecionar_frete}    5s
    Click Element    ${selecionar_frete}
    Click Element    ${botao_continuar}

    # Aguarda o carrinho aparecer
    ${carrinho_item_nome} =    Set Variable    xpath=(//android.widget.TextView[contains(@text, "Cesta de Café")])[1]
    Wait Until Element Is Visible    ${carrinho_item_nome}    10s
    Element Text Should Be    ${carrinho_item_nome}    Cesta de Café da Manhã Amor


    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="R$ 299,99"]    10s
    Element Text Should Be    xpath=//android.widget.TextView[@text="R$ 299,99"]    R$ 299,99
