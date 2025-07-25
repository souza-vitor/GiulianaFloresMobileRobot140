# Giuliana Flores Mobile Robot 1.4.0

Este projeto automatiza testes para o aplicativo mobile da Giuliana Flores utilizando Robot Framework. O objetivo é garantir a qualidade das principais funcionalidades do app, como login, navegação, seleção de produtos e fluxo de compra.

## Estrutura do Projeto
- **pages/**: Contém arquivos `.robot` com keywords para cada tela do aplicativo (login, principal, produto, carrinho).
- **tests/mobile/po/**: Implementa Page Objects para facilitar a reutilização de keywords.
- **tests/mobile/simples/**: Testes funcionais simples, como seleção de produto.

## Ferramentas Utilizadas
- **Robot Framework**: Framework principal para automação de testes.
- **Appium**: Para automação de aplicativos mobile.
- **Python**: Linguagem base para execução dos testes.

## Como rodar localmente
1. **Pré-requisitos**:
   - Python 3 instalado
   - Appium Server instalado e em execução
   - Instalar dependências:
     ```powershell
     pip install robotframework robotframework-appiumlibrary
     ```
2. **Configurar o dispositivo/emulador**:
   - Certifique-se de que o dispositivo/emulador está conectado e reconhecido pelo Appium.
3. **Executar os testes**:
   - Navegue até a pasta do projeto:
     ```powershell
     cd GiulianaFloresMobileRobot140
     ```
   - Execute os testes desejados:
     ```powershell
     robot tests/mobile/simples/selecionar_produto.robot
     ```

## Observações
- Os arquivos de Page Object facilitam a manutenção dos testes.
- Adapte as configurações do Appium conforme o dispositivo utilizado.