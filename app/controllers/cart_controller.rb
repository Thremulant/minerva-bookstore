class CartController < ApplicationController
  def create
    id = params[:id].to_i
    session[:cart] << id
    # logger.debug(session[:cart])
    redirect_to root_path
  end

  def destroy; end
end
