class TipsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    user.tips.create(amount: params[:amount])
  end
end
