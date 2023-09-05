            # language: pt

            Funcionalidade: Concluir cadastro

            Contexo:
            Dado que estou na tela de cadasto

            Cenário: Conclusão bem sucedida do cadastro
            Quando preencher o formulário com todos os campos obrigatórios válidos
            E clicar no botão "Concluir cadastro"
            Então devo ver a mensagem "Cadastro realizado com sucesso" e conseguir finalizar a da compra.


            Esquema do Cenário: Tentativa de cadastro com formato de e-mail inválido
            Quando preencher o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
            Então devo visualizar a <mensagem>

            Exemplos:
            | nome     | sobrenome | pais     | endereco      | cidade         | cep         | telefone      | email              | mensagem                         |
            | "Marcos" | "Colossi" | "Brasil" | "Rua do meio" | "Cachoeirinha" | "94920-512" | "51998935649" | "marcos@teste.com" | "Cadastro realizado com sucesso" |
            | "Marcos" | "Colossi" | "Brasil" | "Rua do meio" | "Cachoeirinha" | "94920-512" | "51999999999" | "marcosteste.com"  | "Erro: E-mail inválido!"         |

            Esquema do Cenário: Tentativa de cadastro com campos obrigatórios vazios
            Quando preencher o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
            Então devo visualizar a <mensagem>

            Exemplos:
            | nome     | sobrenome | pais     | endereco      | cidade         | cep         | telefone      | email              | mensagem                                       |
            | "Marcos" | "Colossi" | "Brasil" | "Rua do meio" | "Cachoeirinha" | "94920-512" | "51998935649" | "marcos@teste.com" | "Cadastro realizado com sucesso"               |
            | "Marcos" | ""        | "Brasil" | ""            | "Cachoeirinha" | "94920-512" | "51999999999" | ""                 | "Erro: Preencha todos os campos orbigatórios!" |
