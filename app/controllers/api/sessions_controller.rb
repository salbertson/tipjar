class Api::SessionsController < Api::BaseController
  skip_before_filter :authorize

  def create
    user = User.authenticate(params[:email], params[:password])

    if user
      respond_with user, location: nil
    else
      head 401
    end
  end
end
