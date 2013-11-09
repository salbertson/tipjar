class Api::TipsController < ApplicationController
  respond_to :json

  def create
    user = User.find(params[:user_id])

    respond_with(
      user.tips.create(amount: params[:amount]),
      location: nil
    )
  end
end
