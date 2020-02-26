class LoginPage
    include Capybara::DSL

    def go
        visit "/"
    end

    def with(user, pass)
        find('input[name="user_name"]').set user
        find('input[name="username_password"]').set pass
        find('#bigbutton').click
    end

end