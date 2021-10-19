class ShowprojectsController < ApplicationController
  def index
    @Show_Assgind_Projects = Project.all
  end
end
