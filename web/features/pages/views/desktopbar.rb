class DesktopBarView
    include Capybara::DSL

    def logged_user
        find('.desktop-bar .toolbar .globalLinks-desktop #with-label').text
    end

    def add_task
        find('.quickcreatetop').hover
        find('a[href*="Tasks&action=EditView"]').click
    end

    def off
        find('.desktop-bar .toolbar .globalLinks-desktop #with-label').hover
        find('.desktop-bar .toolbar .globalLinks-desktop a[href*=Logout]').click
    end

end