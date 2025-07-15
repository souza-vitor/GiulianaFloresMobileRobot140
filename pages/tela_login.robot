*** Settings ***
Library    AppiumLibrary

*** Variables ***
${fecha_ad}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageView
${botao_entrar}    accessibility_id=Entrar
${login_edittext}    xpath=(//android.widget.EditText)[1]
${senha_edittext}    xpath=(//android.widget.EditText)[2]
${login_botao_entrar}    accessibility_id=Entrar

*** Keywords ***
Fechar ad 
    Wait Until Element Is Visible    ${fecha_ad}    3s
    Click Element    ${fecha_ad}

Clicar no botao entrar
    Wait Until Element Is Visible    ${login_botao_entrar}    5s
    Click Element    ${botao_entrar}

Preencher o campo login
    Wait Until Element Is Visible    ${login_edittext}    10s
    Click Element    ${login_edittext}
    Input Text    ${login_edittext}    nashton.braxley@dsitip.com

Preencher o campo senha
    Click Element    ${senha_edittext}
    Input Text    ${senha_edittext}    SempreAuto10!

Clicar no botao login entrar
    Click Element    ${login_botao_entrar}