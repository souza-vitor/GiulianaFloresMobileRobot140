*** Settings ***
Library    AppiumLibrary

*** Variables ***
${selecionar_endereco}    xpath=//android.view.ViewGroup[starts-with(@content-desc, "Endereço Principal")]
${endereco_aplicar}    xpath=(//android.view.ViewGroup[@content-desc="Aplicar"])[2]
${campo_pesquisa}    xpath=//android.widget.EditText[@text="BUSCAR NA GIULIANA FLORES"]
${pesquisa_item}    xpath=//android.widget.TextView[@text="Cesta de Café da Manhã Amor"]

*** Keywords ***
Selecionar endereco
    Wait Until Element Is Visible    ${selecionar_endereco}    15s
    Click Element    ${selecionar_endereco}

Clicar no botao aplicar    
    Wait Until Element Is Visible    ${endereco_aplicar}    5s
    Click Element    ${endereco_aplicar}


Preencher o campo pesquisa
    Wait Until Element Is Visible    ${campo_pesquisa}    5s
    Click Element    ${campo_pesquisa}
    Input Text    ${campo_pesquisa}    cesta de café da manhã amor
    Press Keycode    66

Clicar no item da pesquisa
    Wait Until Element Is Visible    ${pesquisa_item}    10s
    Click Element    ${pesquisa_item}