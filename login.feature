#language: pt

Funcionalidade:  Login na plataforma
como cliente da EBAC-SHOP 
Quero fazer o login (autenticação) na plataforma   
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Email já cadastrado deve ser negado no registro
Dado que o <email> já tenha sido registrado
Quando eu acessar a página de cadastro
E Utilizar <email>