#language: pt

@login
Funcionalidade: Editar de task
    Para que eu possa editar tasks na suíte CRM
    Sendo um gestor da suíte CRM
    Posso editar uma task

    @edit_task
    Cenario: Editar uma task
        O gestor da suíte CRM cadastra uma nova task através do formulário
        e um novo registro é inserido 

        Dado que "high" foi cadastrada de forma errada
        Quando realizo a edição desta task com "task"
        Então devo ver a task editada na lista
