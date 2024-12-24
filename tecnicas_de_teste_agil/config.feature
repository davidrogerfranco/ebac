Feature: Configurar Produto

  Scenario: Selecionar cor, tamanho e quantidade obrigatórios
    Given que estou na página de configuração do produto
    When seleciono a "Orange"
    And seleciono o "S"
    And seleciono a "1"
    Then a seleção deve ser obrigatória

  Scenario: Limitar a quantidade de produtos por venda
    Given que estou na página de configuração do produto
    When tento adicionar mais de 10 produtos
    Then o sistema deve exibir uma mensagem de erro "Limite de 10 produtos por venda"

  Scenario: Limpar seleções
    Given que estou na página de configuração do produto
    When clico no botão "limpar"
    Then as seleções devem ser resetadas ao estado original

  Scenario Outline: Selecionar cor, tamanho e quantidade obrigatórios
    Given que estou na página de configuração do produto
    When seleciono a "<cor>"
    And seleciono o "<tamanho>"
    And seleciono a "<quantidade>"
    Then a seleção deve ser obrigatória

    Examples:
      | cor     | tamanho | quantidade |
      | Orange  | S       | 1          |
      | Blue    | M       | 2          |
      | Red     | L       | 3          |
