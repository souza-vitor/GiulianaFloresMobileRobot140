*** Settings ***
Library    AppiumLibrary

*** Variables ***
${carrinho_item_nome}    xpath=(//android.widget.TextView[contains(@text, "Cesta de Café")])[1]
${carrinho_item_preco}    xpath=//android.widget.TextView[@text="R$ 299,99"]

*** Keywords ***
Verificar nome item carrinho
    # Aguarda o carrinho aparecer
    Wait Until Element Is Visible    ${carrinho_item_nome}    10s
    Element Text Should Be    ${carrinho_item_nome}    Cesta de Café da Manhã Amor

Verificar preco item carrinho
    Wait Until Element Is Visible    ${carrinho_item_preco}    10s
    Element Text Should Be    ${carrinho_item_preco}    R$ 299,99