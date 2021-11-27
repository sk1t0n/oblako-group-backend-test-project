module Response
  extend ActiveSupport::Concern

  def ok(key, value)
    success 200, key, value
  end

  def created(key, value)
    success 201, key, value
  end

  def bad_request
    respond_to do |format|
      format.json { render json: { status: 400 } }
    end
  end

  private

  def success(status, key, value)
    respond_to do |format|
      format.json { render json: { status: status, key.to_sym => value } }
    end
  end
end
