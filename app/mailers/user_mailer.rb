class UserMailer < ApplicationMailer
  def new_project_email(project,user,credential)
    @user = user
    @project = project
    @credentials = credential
     mail(to:user.email, subject: "Project Deatils")
  end
end
