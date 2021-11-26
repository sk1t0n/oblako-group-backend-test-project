class ProjectController < ApplicationController
  def index
    @message = { message: 'ok' }
    respond_to do |format|
      format.json { render json: @message }
    end
  end
end
