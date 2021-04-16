class CartController < ApplicationController
  def create
    id = params[:id].to_i
    session[:cart] << id
    # logger.debug(session[:cart])
    redirect_to request.referrer
  end

  def index
    add_breadcrumb 'Cart', :cart_index_path

    @items = session[:cart]
  end

  def destroy; end

  def get_book(id)
    Book.find(id)
  end
end
