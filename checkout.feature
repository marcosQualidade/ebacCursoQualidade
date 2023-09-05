            # language: pt

            Funcionalidade: Login

            Contexto:
            Dado que estou na tela de login da EBAC-SHOP

            Cenário: login com dados válidos
            Quando digitar o usuário "marcos@teste.com"
            E a senha "@marcos123"
            Então devo ser redirecionado para a tela de "checkout"

            Cenário: login com dados inválidos
            Quando digitar o usuário "qualquer"
            E a senha "123"
            Então devo ver a mensagem Atenção: Usuário ou senha inválidos.


            # Usando parâmetros e tabela de exemplos aproveitando para futura automatização do script

            Esquema do Cenário: login com multiplos usuários
            Quando inserir meu <usuario>
            E minha <senha>
            Então devo visualizar a <mensagem> de sucesso

            Exemplos:
            | usuario            | senha        | mensagem                     |
            | "marcos@teste.com" | "@marcos123" | "Seja bem vindo Marcos!"     |
            | "qualquer"         | "123"        | "Usuário ou senha inválidos" |


