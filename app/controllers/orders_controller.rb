class OrdersController < ApplicationController
  def create
    @service = Service.find(params[:service_id])
    @user_of_service = User.find(@service.user_id)
    @user = current_user
    order = Order.new()
    order.price = @service.price
    order.user = @user
    order.service = @service
    order.save
  end

  private

  def order_params
    params.require(:order).permit(:price, :date_of_order, :service, :user)
  end
end
