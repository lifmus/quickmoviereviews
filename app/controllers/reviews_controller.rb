class ReviewsController < ApplicationController

  def create
    authenticate_user!
  	@review = Review.new(params[:review])
  	@movie = @review.movie

    if @review.save
      flash[:message] = "You submitted a new review"
      redirect_to root_path
    else
      flash[:error] = "You cannot have blank fields!"
      redirect_to root_path
    end
  end
  
end
