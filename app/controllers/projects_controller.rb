class ProjectsController < ApplicationController
  def index; end

  def new
    @project = Project.new
  end

  def per_day
    @project = Project.where(pay_frequency: 'perday')
  end

  def per_week
    @project = Project.where(pay_frequency: 'perweek')
  end

  def per_month
    @project = Project.where(pay_frequency: 'permonth')
  end

  def assginproject
    @user = User.all
    # @project = Project.all
  end

  def create
    @project = Project.create(project_params)
      if @project.save
        flash[:notice] = "Project Added ."
         redirect_to '/homes'
      else
        # redirect_to '/projects/'
    end
  end

  private
  def project_params
    params.require(:project)
          .permit(:title, :client_name, :pay_rate, :pay_frequency, :image,
                  credentials_attributes: [:id, :title, :email, :password, :remark])
  end
end
