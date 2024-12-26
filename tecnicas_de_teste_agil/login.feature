Feature: Login na Plataforma

  Cenário: Login com dados válidos
    Dado que o cliente está na página de login
    Quando o cliente insere um usuário válido
    E insere uma senha válida
    E clica no botão "LOGIN"
    Então deve ser direcionado para a tela de checkout

  Cenário: Login com dados inválidos
    Dado que o cliente está na página de login
    Quando o cliente insere usuário ou senha inválidos
    E clica no botão "LOGIN"
    Então deve ver a mensagem de alerta "Usuário ou senha inválidos"

| TABELA 1: DADOS INVÁLIDOS [dados fornecidos pelo usuário X base de dados do sistema]
|     USUÁRIO	  |     SENHA	   | RESULTADO
| usuario_correto |	senha_errada   |  inválido
| usuario_errado  |	senha_correta  |  inválido
| usuario_correto |	senha_correta  |  válido
| usuario_errado  |	senha errada   |  inválido
