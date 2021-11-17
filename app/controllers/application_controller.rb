class ApplicationController < ActionController::API
  before_action :authenticated?

  def authenticated?
    if request.headers[:Authorization] != 'Barer abcdefg123456'
      response.headers['WWW-Authenticate'] = 'Bearer error="invalid_request"'
      render status: 401, json: { status: 401, error: 'Unauthorized' }
    end
  end
end
