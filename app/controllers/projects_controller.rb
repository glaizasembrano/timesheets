class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

def create
  @project = Project.new(project_params)

  if @project.save
    redirect_to @project, notice: 'Project has been created.'
  else
    render :new
  end
end

  def show
  end


  def project_params
    params.require(:project).permit(:name, :description)
  end
end