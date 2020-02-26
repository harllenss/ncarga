Quando("faço login com {string} e {string}") do |user, password|
    @login_page.go
    @login_page.with(user, password)  
end
  
Então("devo ver {string} na área logada") do |user_name|
    expect(@desktopbar.logged_user).to eql user_name
end