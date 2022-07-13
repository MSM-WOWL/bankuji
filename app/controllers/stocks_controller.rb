class StocksController < ApplicationController

  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to action: :index
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:area, :store_name, :product, :lottery, :comment).merge(user_id: current_user.id)
  end

end
