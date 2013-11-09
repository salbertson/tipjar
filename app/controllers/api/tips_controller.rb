class Api::TipsController < Api::BaseController
  def create
    user = User.find(params[:user_id])

    respond_with(
      user.tips.create(amount: params[:amount]),
      location: nil
    )
  end
end
