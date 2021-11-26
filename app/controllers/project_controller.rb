class ProjectController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: all_projects }
    end
  end

  private

  def all_todos_by_project(project)
    todos = []

    project.todos.each do |todo|
      todos << {
        id: todo.id,
        text: todo.text,
        isCompleted: todo.isCompleted
      }
    end

    todos
  end

  def all_projects
    projects = Project.includes(:todos).references(:todos).select(:id, :title)

    json = []
    projects.each do |project|
      json << {
        id: project.id,
        title: project.title,
        todos: all_todos_by_project(project)
      }
    end

    json
  end
end
