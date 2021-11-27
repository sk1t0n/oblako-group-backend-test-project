class TodoController < ApplicationController
  include Response
  protect_from_forgery except: %i[create update]

  def create
    @todo = Todo.new(create_todo_params)

    if @todo.save
      created 'todo', @todo
    else
      bad_request
    end
  rescue StandardError
    bad_request
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(update_todo_params)
      ok 'todo', @todo
    else
      bad_request
    end
  rescue StandardError
    bad_request
  end

  private

  def create_todo_params
    params.require(:todo).permit(:text, :project_id)
  end

  def update_todo_params
    params.require(:todo).permit(:text, :isCompleted)
  end
end
