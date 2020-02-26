#language: pt

@login
Funcionalidade: Remover task
    Para que eu possa manter a suíte crm atualizada
    Sendo um gestor que encontrou uma task indesejada
    Posso remover este item

    @rm_task @logout
    Cenario: Confirmar exclusão

        Dado que "task" está na suíte
        Quando eu solicito a exclusão
        E eu confirmo a exclusão
        Então este item deve ser removido da suíte