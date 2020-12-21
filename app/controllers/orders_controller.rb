class OrdersController < ApplicationController
     def index
       @orders  = Order.all
     end
    
    def show
        @order = Order.find(params[:id])
    end

    def payment
    end

    def place_order
      @order = Order.new(order_params) 
      @total_quantity = LineItem.where(user_id: current_user.id).sum('quantity')
      @total_price =  LineItem.where(user_id: current_user.id).sum('price')
      current_user.latest_order.update(total_price: @total_price, 
        status: 'payment',total_quantity:@total_quantity, payment_mode: @order.payment_mode)
      redirect_to orders_path
    end
  
    private
      def order_params
        params.require(:order).permit(:total_price, :total_quantity, :status, :payment_mode, :user_id)
      end
end
