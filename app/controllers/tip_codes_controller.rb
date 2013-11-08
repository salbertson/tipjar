class TipCodesController < ApplicationController
  def show
    @tip_code = TipCode.find(params[:id])
  end
end
