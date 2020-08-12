class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params)
     if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


     private

  def strong_params
    params.require(:review).permit(:rating, :content)
  end

end
