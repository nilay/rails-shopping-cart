class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_items = @order.order_lines.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to carts_path
  end

  def update
    @order = current_order
    @order_item = @order.order_lines.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_lines.find(params[:id])
    @order_item.destroy
    redirect_to carts_path, notice: 'Item was successfully removed from your cart'
  end

  private
  def order_item_params
    params.require(:order_item).permit(:qty, :product_id)
  end
end
