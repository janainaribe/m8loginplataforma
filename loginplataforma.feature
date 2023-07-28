            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticaçao do portal EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "janaina@ebac.com.br"
            E a senha "2023"
            Então deve ser direcionado para a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxx@ebac.com.br"
            E a senha "2023"
            Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "janaina@ebac.com.br"
            E a senha "2020"
            Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario               | senha  | mensagem                     |
            | "janaina@ebac.com.br" | "2023" | "Olá, Janaina"               |
            | "xxxx@ebac.com.br"    | "2023" | "Usuário ou senha inválidos" |
            | "janaina@ebac.com.br" | "2020" | "Usuário ou senha inválidos" |


