class ShowprojectsController < ApplicationController
  def index
    @assignedProject = AssignedProject.all
  end
end
