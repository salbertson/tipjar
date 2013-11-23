class Api::BaseController < ApplicationController
  respond_to :json

  skip_before_filter :verify_authenticity_token
  before_filter :authorize

  private

  def default_serializer_options
    { root: false }
  end

  def authorize
    authenticate_or_request_with_http_token do |token, options|
      ApiToken.exists?(token: token)
    end
  end
end
