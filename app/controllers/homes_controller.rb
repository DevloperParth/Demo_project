class HomesController < ApplicationController
  def index
    @user = User.all
    @project = Project.all
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def destroy; end
end
