class MoviesController < ApplicationController

  def new
    authenticate_user!
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = Movie.new(params[:movie])

    if @movie.save
      flash[:message] = "You have made a new movie"
      redirect_to root_path
    else
      flash[:error] = "You cannot have blank fields!"
      redirect_to new_movie_path
    end
  end

  def destroy
  end

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
  end

  def update
  end
end
