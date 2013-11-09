class Api::TipsController < Api::BaseController
  respond_to :json

  def create
    user = User.find(params[:user_id])

    respond_with(
      user.tips.create(amount: params[:amount]),
      root: false,
      location: nil
    )
  end
end
