class ApplicationController < ActionController::API
  before_action :authenticated?

  def authenticated?
    if request.headers[:Authorization] != 'Barer abcdefg123456'
      render status: 401, json: { error: 'Unauthorized' }
    end
  end
end
