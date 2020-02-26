require 'base64'

Before do
    @login_page = LoginPage.new
    @desktopbar = DesktopBarView.new
    @sidebar = SideBarView.new
    @task_page = TaskPage.new

    page.current_window.resize_to(1440,900)
end

Before("@login") do
    @login_page.go
    @login_page.with("will", "will")
end

After("@logout") do
    @desktopbar.off
end

After do
   shot_file = page.save_screenshot("log/screenshot.png")
   shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
   embed(shot_b64, "image/png", "Screenshot")
end