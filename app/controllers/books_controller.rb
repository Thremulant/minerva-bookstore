class BooksController < ApplicationController
  def index
    @books = Book.all
    @paginated = Book.page params[:page]
  end
end
