class ReviewsController < ApplicationController
  def new
    @restaurant
  end

  def create
    @restaurant
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
