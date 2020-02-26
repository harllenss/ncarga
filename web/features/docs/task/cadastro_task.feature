#language: pt

@login
Funcionalidade: Cadastro de task
    Para que eu possa inicializar novas tasks na suíte CRM
    Sendo um gestor da suíte CRM
    Posso cadastrar uma nova task

    @new_task
    Esquema do Cenario: Nova task
        O gestor da suíte CRM cadastra uma nova task através do formulário
        e um novo registro é inserido 

        Dado que <task> é uma nova task
        Quando faço o cadastro desta task
        Então devo ver a nova task na lista

        Exemplos: 
            | task     |
            | "high"   |
            | "medium" |
            | "low"    |
