#language: pt

Funcionalidade: Seleção de produtos
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
para depois inserir no carrinho

Cenário: Adicionar produtos ao carrinho
    Dado estou na página de detalhes do produto
    Quando seleciono a cor "Azul", o tamanho "M" e a quantidade "2"
    E clico no botão "Adicionar ao carrinho"
    Então devo visualizar a mensagem de sucesso.

Cenário: Adicionar produtos sem seleções de cor, tamanho e quantidade
    Dado Dado estou na página de detalhes do produto
    Quando clico no botão "Adicionar ao carrinho" sem selecionar a cor, o tamanho e a quantidade
    Então  devo visualizar a mensagm de erro informando que os campos cor, tamanho e quantidade são obrigatórios.


# Usando o contexto no limite de produtos por venda

Funcionalidade: Limite de produtos por venda
Como cliente da EBAC-SHOP
Quero Selecionar a quantidade de produtos
para depois inserir no carrinho

Contexto:
Dado estou na página de detalhes do produto

Cenário: Adicionar 10 produtos ao carrinho
    Quando seleciono 10 produtos
    E clico no botão "Adicionar ao carrinho"
    Então vejo que o carrinho contém 10 produtos

Cenário: Adicionar Mais de 10 produtos ao carrinho
    Quando seleciono 11 produtos 
    E clico no botão "Adicionar ao carrinho"
    Então devo ver uma mensagem de erro informando que 10 é o limite máximo de produtos. 

Funcionalidade: Botão Limpar
Cenário: Limpar carrinho
    Dado que tenho produtos no carrinho
    Quando clicar no botão "Limpar"
    Então devo ver o carrinho sem produtos, a mensagem carrinho vazio e o retorno ao estado original.

Funcionalidade: Botão Limpar
Cenário: Limpar carrinho sem produto
    Dado que não tenho produtos no carrinho
    Quando clicar no botão "Limpar"
    Então nada deve acontecer pois, nãi existe produtos no carrinho.
