class Api::TipCodesController < Api::BaseController
  def show
    respond_with TipCode.find_by(token: params[:id])
  end
end
