Funcionalidade: Gerenciamento de itens favoritos na EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero favoritar os itens que eu gosto
  Para efetuar a compra futuramente

  Contexto:
    Dado que estou logado na minha conta da EBAC-SHOP
    E estou visualizando um produto na loja

  Cenário: Adicionar e acessar lista de favoritos
    Quando clico no botão "Favoritar" de um produto
    Então o produto deve ser adicionado à minha lista de favoritos
    E devo conseguir acessar essa lista através do menu "Favoritos"

  Cenário: Remover item dos favoritos
    Dado que tenho um produto na minha lista de favoritos
    Quando clico no botão "Remover dos favoritos"
    Então o produto deve ser retirado da minha lista de favoritos

  Cenário: Persistência dos favoritos após logout e login
    Dado que tenho produtos na minha lista de favoritos
    Quando faço logout da conta
    E faço login novamente
    Então os mesmos produtos devem continuar salvos na minha lista de favoritos

  Cenário: Transferir item dos favoritos para o carrinho
    Dado que tenho um produto na minha lista de favoritos
    Quando clico na opção "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao meu carrinho de compras

  Esquema do Cenário: Notificação de alteração de preço de produto favoritado
    Dado que o produto <produto> está na minha lista de favoritos
    E o preço anterior era <preco_antigo>
    Quando o preço é atualizado para <preco_novo>
    Então devo receber uma notificação com a mensagem <mensagem>

    Exemplos:
      | produto         | preco_antigo | preco_novo | mensagem                                                  |
      | Camiseta EBAC   | R$ 59,90     | R$ 49,90   | O produto "Camiseta EBAC" teve uma redução de preço!     |
      | Fone de Ouvido  | R$ 99,00      | R$ 109,00  | O produto "Fone de Ouvido" teve seu preço alterado.      |
