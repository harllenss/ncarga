#CADASTAR TASK
Dado("que {string} é uma nova task") do |task_code|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/task.yaml"))
    @task = file[task_code]
end
  
Quando("faço o cadastro desta task") do
    @desktopbar.add_task
    @task_page.create(@task)
end
  
Então("devo ver a nova task na lista") do
    result = @task_page.task_tab(@task)
    expect(result).to have_text @task["subject"]
    expect(result).to have_text @task["priority"]
end

#EDITAR TASK
Dado("que {string} foi cadastrada de forma errada") do |task|
    file_edit = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/task.yaml"))
    @task = file_edit[task]
end
  
Quando("realizo a edição desta task com {string}") do |edit_task|
    file_edit = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/task.yaml"))
    @task_edit = file_edit[edit_task]

    @desktopbar.add_task
    @sidebar.view_task
    @task_page.select_task(@task)
    @task_page.request_task_to_action
    @task_page.select_edit_option
    @task_page.edit_task(@task_edit)
end
  
Então("devo ver a task editada na lista") do
    result = @task_page.task_tab(@task_edit)
    expect(result).to have_text @task_edit["subject"]
    expect(result).to have_text @task_edit["priority"]
end
  
#EXCLUIR TASK
Dado("que {string} está na suíte") do |task|
    remove_edit = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/task.yaml"))
    @task_remove = remove_edit[task]
end
  
Quando("eu solicito a exclusão") do
    @desktopbar.add_task
    @sidebar.view_task
    @task_page.select_task(@task_remove)
    @task_page.request_task_to_action
end
  
Quando("eu confirmo a exclusão") do
    @task_page.confirm_task_to_remove
end
  
Então("este item deve ser removido da suíte") do
    expect(@task_page.has_no_task(@task_remove["subject"])).to be true
end