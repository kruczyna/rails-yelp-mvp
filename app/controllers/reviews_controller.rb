class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save

    redirect_to restaurant_review_path(restaurant_id: @restaurant.id, id: @review.id)
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
