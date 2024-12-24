Feature: Tela de Cadastro - Checkout

  Scenario: Cadastro com sucesso
    Given que estou na página de cadastro
    When preencho todos os campos obrigatórios
    And clico no botão "FINALIZAR COMPRA"
    Then o cadastro deve ser concluído com sucesso

  Scenario: Cadastro com e-mail inválido
    Given que estou na página de cadastro
    When preencho o campo "Endereço de e-mail" com um formato inválido
    And clico no botão "FINALIZAR COMPRA"
    Then devo ver uma mensagem de erro "Formato de e-mail inválido"

  Scenario: Cadastro com campos vazios
    Given que estou na página de cadastro
    When deixo algum campo obrigatório vazio
    And clico no botão "FINALIZAR COMPRA"
    Then devo ver uma mensagem de alerta "Preencha todos os campos obrigatórios"
