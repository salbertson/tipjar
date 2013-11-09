class Api::TipCodesController < Api::BaseController
  def show
    respond_with TipCode.find(params[:id]), root: false
  end
end
