class Api::TipCodesController < ApplicationController
  respond_to :json

  def show
    respond_with TipCode.find(params[:id])
  end
end
