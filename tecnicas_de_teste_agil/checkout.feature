Feature: Tela de Cadastro - Checkout

  Scenario: Cadastro com sucesso
    Dado que o cliente está na página de cadastro
    Quando o cliente preenche todos os campos obrigatórios
    E clica no botão "FINALIZAR COMPRA"
    Então o cadastro deve ser concluído com sucesso

  Scenario: Cadastro com e-mail inválido
    Dado que o cliente está na página de cadastro
    Quando o cliente preenche o campo "Endereço de e-mail" com um formato inválido (Vide exemplos)
    E clica no botão "FINALIZAR COMPRA"
    Então deve ver uma mensagem de erro "Formato de e-mail inválido"

  Scenario: Cadastro com campos vazios
    Dado que o cliente está na página de cadastro
    Quando o cliente deixa algum campo obrigatório vazio
    E clica no botão "FINALIZAR COMPRA"
    Então deve ver uma mensagem de alerta "Preencha todos os campos obrigatórios"

    | Exemplos de e-mail inválido       |
    | --------------------------------- |
    | usuário@.com                      |
    | usuário@domínio                   |
    | usuário@domínio.c                 |
    | usuário @domínio.com              |
    | usuário!@domínio.com              |
    | usuário@domínioinexistente.com    |
    | usuário@domínio.inv               |
    | usuário@domínio.123               |

    |   Exemplos de senha inválida      |
	|-----------------------------------|
    | senha_curta: "1234"               |
    | sem_especiais: "senha123"         |
    | sem_numeros: "senhasegura"        |
    | sem_maiusculas: "senhasegura123"  |
    | muito_simples: "12345678"         |
    | repeticao: "aaaa1111"             |
