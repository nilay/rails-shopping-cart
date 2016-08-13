class CartsController < ApplicationController

  # GET /carts
  def index
    @order = current_order
  end

  def checkout
    redirect_to "#{Rails.configuration.payment_gateway_url}?merchant_url=#{root_url}cart/final"
  end

  def final
    @status = params[:status]
    if @status == "success"
      session[:order_id] = nil
    end
  end

end
