*** Settings ***
Library    AppiumLibrary

*** Variables ***
${item_titulo}    xpath=(//android.widget.TextView[@text="Cesta de Café da Manhã Amor"])[1]
${item_preco}    xpath=//android.widget.TextView[@text="R$ 299,99"]
${botao_continuar}    accessibility_id=CONTINUAR
${selecionar_frete}    xpath=//android.widget.TextView[@resource-id="undefined.day_2025-07-18.text"]

*** Keywords ***
Verificar o titulo do item
    Wait Until Element Is Visible    ${item_titulo}    5s
    Element Text Should Be    ${item_titulo}    Cesta de Café da Manhã Amor
    
Verificar o preco do item
    Element Text Should Be    ${item_preco}    R$ 299,99

Fazer a rolagem da tela
    Swipe    ${643}    ${1525}    ${635}    ${1053}

Clicar no botao continuar
    Click Element    ${botao_continuar}

Selecionar o frete
    Wait Until Element Is Visible    ${selecionar_frete}    5s
    Click Element    ${selecionar_frete}
    Click Element    ${botao_continuar}