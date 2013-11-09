class Api::CodesController < Api::BaseController
  def show
    respond_with Code.find_by(token: params[:id])
  end
end
