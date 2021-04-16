class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :cart
  before_action :user

  add_breadcrumb 'Home', :root_path

  def initialize_session
    session[:cart] ||= []
    session[:user] ||= []
  end

  def cart
    Book.find(session[:cart])
  end

  def user
    Customer.find(session[:user])
  end
end
