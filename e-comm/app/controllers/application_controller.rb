require 'securerandom'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :current_order

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_order
    unless session[:order_id].nil?
      Order.find(session[:order_id])
    else
      order = Order.new
      order.user_id = current_user.id
      order.order_no = SecureRandom.hex 8
      order
    end
  end

  def authorize
    redirect_to new_session_path unless current_user
  end

end
