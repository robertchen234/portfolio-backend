class Api::V1::ProjectsController < ApplicationController

  before_action :find_project, only: [:update, :destroy]

  def index
    @projects = Project.all 
    render json: @projects 
  end 

  def create
    @project = Project.create(project_params)
    render json: @project, status: :accepted
  end

  def update 
    @project.update(project_params)
    if @project.save
      render json: @project, status: :accepted 
    else 
      render json: { errors: @project.errors.full_messages }, status: :unprocessible_entity 
    end 
  end 

  def destroy 
    @project.destroy 
    @projects = Project.all
    render json: @projects, status: :ok 
  end 

  private 

  def project_params 
    params.require(:project).permit(:title, :teaser, :description, :year, :tech_stack, :demo_url, :git_url, :video_url, :image_url, :claps)
  end 

  def find_project
    @project = Project.find(params[:id])
  end

end
