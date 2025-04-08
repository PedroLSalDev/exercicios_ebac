#language: pt

Funcionalidade: Adicionar produtos no carrinho
Como cliente da EBAC-SHOP
Quero adicionar produtos no carrinho
Para realizar a compra dos itens

Cenário: Limite de itens no carrinho
Dado que eu tenha adicionado 5 itens ao carrinho
E tente adicionar mais um item
Quando clicar no botão para adicionar o item
Então deve exibir uma mensagem informando que o limite foi atingido: "Seu carrinho já está cheio"

Cenário: Notificação ao atingir o limite do carrinho
Dado que eu esteja adicionando itens ao carrinho
Quando eu adicionar o 5º item
Então deve exibir uma notificação com a mensagem: "Seu carrinho está cheio"

Cenário: Produtos permanecem no carrinho ao navegar pelo site
Dado que eu tenha adicionado produtos ao carrinho
Quando eu navegar para outras páginas do site
Então os produtos adicionados devem permanecer no carrinho

Cenário: Alteração da quantidade de um produto no carrinho
Dado que eu esteja na página do carrinho
E tenha um produto adicionado
Quando eu clicar no botão "+" ao lado do produto
Então deve ser adicionada mais uma unidade desse produto ao carrinho

Cenário: O usuário pode ajustar a quantidade de cada item no carrinho
Dado que eu esteja na página do carrinho
E tenha um ou mais itens adicionados
Quando eu ajustar a quantidade de um item utilizando os botões "+" ou "-"
Então a quantidade do item no carrinho deve ser atualizada corretamente
E o valor total da compra deve ser recalculado conforme a nova quantidade
