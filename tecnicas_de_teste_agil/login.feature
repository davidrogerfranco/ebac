Feature: Login na Plataforma

  Scenario: Login com sucesso
    Given que estou na página de login
    When preencho o campo "Username or email address" com "usuario_valido"
    And preencho o campo "Password" com "senha_valida"
    And clico no botão "LOGIN"
    Then devo ser direcionado para a tela de checkout

  Scenario: Login com dados inválidos
    Given que estou na página de login
    When preencho o campo "Username or email address" com "usuario_invalido"
    And preencho o campo "Password" com "senha_invalida"
    And clico no botão "LOGIN"
    Then devo ver a mensagem de alerta "Usuário ou senha inválidos"
