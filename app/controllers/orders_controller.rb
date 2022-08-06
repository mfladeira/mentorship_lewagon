class OrdersController < ApplicationController
  def create
    @service = Service.find(params[:service_id])
    @user_of_service = User.find(@service.user_id)
    @user_logged = current_user

    order = Order.new()
    order.price = @service.price
    order.user = @user_logged
    order.service = @service
    order.date_of_order = params[:date]
    order.save

    redirect_to '/get-orders-of-user', notice: "Reservation completed"
  end

  def get_orders
    @orders = Order.where(user_id: current_user.id)
  end

  private

  def order_params
    params.require(:order).permit(:price, :date_of_order, :service, :user)
  end
end
