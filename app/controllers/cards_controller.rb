class CardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @line_items = current_order.line_items
  end

    
end
# @order = Order.new(params[:order])
    # unless @order.valid?
    #   render :action => :new
    # else       
    # end