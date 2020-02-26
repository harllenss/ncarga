#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os meus cards
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy @logout
    Cenário: Login

        Quando faço login com "will" e "will"
        Então devo ver "Will Westin" na área logada