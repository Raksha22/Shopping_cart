class ShopsController < ApplicationController


  def index
    @products = Product.all
    @products = Product.paginate(page: params[:page], per_page: 4).order("created_at DESC")

    @line_item = current_order.line_items.new
  end

  def show
    @product = Product.find(params[:id])
  end
end
