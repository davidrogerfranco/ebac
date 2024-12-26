Feature: Configurar Produto

  Cenário: Selecionar cor, tamanho e quantidade obrigatórios
    Dado que o cliente está na página de configuração do produto
    Quando o cliente seleciona uma cor, tamanho E quantidade
    Então o sistema deve permitir E exibir a seleção na tela

  Cenário: Limitar quantidade de produtos por venda
    Dado que o cliente está na página de configuração do produto
    Quando o cliente tenta adicionar mais de 10 produtos
    Então o sistema deve exibir uma mensagem de erro E limitar a quantidade para 10 produtos

  Cenário: Limpar seleções
    Dado que o cliente está na página de configuração do produto
    Quando o cliente clica no botão "limpar"
    Então as seleções devem ser resetadas ao estado original
