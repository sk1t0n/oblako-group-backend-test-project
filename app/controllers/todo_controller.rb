class TodoController < ApplicationController
  protect_from_forgery except: :update

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      respond_to do |format|
        format.json { render json: { status: 200, todo: @todo } }
      end
    else
      returns_error
    end
  rescue StandardError
    returns_error
  end

  private

  def todo_params
    params.require(:todo).permit(:text, :isCompleted)
  end

  def returns_error
    respond_to do |format|
      format.json { render json: { status: 400 } }
    end
  end
end
