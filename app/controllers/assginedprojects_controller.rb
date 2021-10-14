class AssginedprojectsController < ApplicationController
  def adduser
    @project = Project.all
    @assginproject = AssignedProject.new()
  end

  def save_assginment
    @user = User.find(params[:user_id])
    @project = Project.find(params[:project_id])
    @credentials = @project.credentials
    @assgin_project = AssignedProject.create(user_id: @user.id, project_id: @project.id)
    return unless @assgin_project.save
    UserMailer.new_project_email(@project, @user, @credentials).deliver_now
    redirect_to '/projects/assginproject'
  end
  def show
    @project = Project.find(params[:id])
  end

  private

  def assignt_params
    params.require(:assginproject).permit(:project_id, :user_id)
  end
end
