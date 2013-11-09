class Api::BaseController < ApplicationController
  respond_to :json

  skip_before_filter :verify_authenticity_token
  before_filter :authorize

  private

  def default_serializer_options
    { root: false }
  end

  def authorize
    unless ApiToken.exists?(token: params[:api_token])
      render text: "Please provide a valid access token.\n", status: :unauthorized
    end
  end
end
