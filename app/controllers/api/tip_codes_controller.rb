class Api::TipCodesController < Api::BaseController
  respond_to :json

  def show
    respond_with TipCode.find(params[:id]), root: false
  end
end
