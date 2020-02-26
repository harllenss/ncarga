class TaskPage
    include Capybara::DSL

    def request_task_to_action
        find('#tab-actions > .dropdown-toggle').click
    end

    def select_task(task)
        find('.table-responsive > tbody > tr > td:nth-child(4) a[href*=stamp]', text: task["subject"]).click
    end

    #MÉTODOS PARA CADASTRO DE TASK
    def select_parent
        window_parent = window_opened_by { find('#btn_parent_name').click }
        within_window(window_parent) do
            find('.list > tbody > tr:first-of-type > td:first-of-type > a[href*=javascript]').click
        end
    end

    def select_contact
        window_contact = window_opened_by { find('#btn_contact_name').click }
        within_window(window_contact) do
            find('.list > tbody > tr:first-of-type > td:first-of-type > a[href*=javascript]').click
        end
    end

    def create(task)
        find('input[name=name]').set task["subject"]
        find('#date_start_date').set task["start_date"]
        find('#date_due_date').set task["due_date"]

        #combo_priority
        drop = find('#priority').click
        drop.find('option', text: task["priority"]).select_option
        find('#description').set task["description"]
        
        select_parent
        select_contact
        
        find('.dcQuickEdit .buttons #SAVE').click
    end

    def task_tab(task)
        find("#tab-content-0", text: task["subject"])
    end

    #MÉTODOS PARA EDIÇÃO DE TASK
    def select_edit_option
        find('.dropdown-menu #edit_button').click
    end

    def edit_task(edit_task)
        find('input[name=name]').set edit_task["subject"]

        #combo_priority
        drop = find('#priority').click
        drop.find('option', text: edit_task["priority"]).select_option

        find('.dcQuickEdit .buttons #SAVE').click
    end

    #MÉTODOS PARA EXCLUSÃO DE TASK
    def search_task_to_remove
        find('.glyphicon-remove').click
        find('thead > #pagination > td > table > tbody > tr > td > .searchLink').click
        find('#name_basic').set('Task Editada')
        find('#search_form_submit').click
    end

    def confirm_task_to_remove
        find('.dropdown-menu #delete_button').click
        confirm_alert
    end

    def confirm_alert
        page.driver.browser.switch_to.alert
        page.driver.browser.switch_to.alert.accept  
    end

    def has_no_task(subject)
        page.has_no_css?('.table-responsive > tbody > tr > td:nth-child(4) a[href*=stamp]', text: subject)
    end

end