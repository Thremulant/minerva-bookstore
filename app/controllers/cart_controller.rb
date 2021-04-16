class CartController < ApplicationController
  helper_method :get_book
  helper_method :increase_quantity

  def create
    id = params[:id].to_i
    session[:cart] << id
    # logger.debug(session[:cart])
    redirect_to request.referrer
  end

  def index
    add_breadcrumb 'Cart', :cart_index_path
    @cart = session[:cart]
    @items = Book.find(@cart).uniq

    # new_order = Order.create(order_state: OrderState.find(1),
    #                          customer: Customer.find(1),
    #                          pst: 0,
    #                          gst: 0,
    #                          hst: 0)

    # @cart.each do |book_id|
    #   quantity = @cart.count(book_id)
    #   add_book = Book.find(book_id)
    #   BooksOrder.create(book: add_book, order: new_order, price: add_book.price, quantity: quantity)
    # end

    # @book_orders = BooksOrder.where(book_id: @cart, order_id: new_order.id)
  end

  def destroy
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to request.referrer
  end

  def get_book(id)
    Book.find(id)
  end

  def increase_quantity(id)
    @cart = session[:cart]
    session[:cart] << id
    redirect_to request.referrer
  end
end
