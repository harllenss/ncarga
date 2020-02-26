class SideBarView
    include Capybara::DSL

    def show_sidebar
        find('#buttontoggle').click
    end

    def view_task
        find('#actionMenuSidebar > ul > li:nth-child(3)').click
        sleep 4
    end
end 