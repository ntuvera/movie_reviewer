class MoviesController < ApplicationController
#       movies GET    /movies(.:format)          movies#index
  def index
    @movies = Movie.all
    @movie  = Movie.new
  end

#            POST   /movies(.:format)          movies#create
  def create
    @movie = Movie.create( movie_params)
    redirect_to '/movies'
  end

#  new_movie GET    /movies/new(.:format)      movies#new
  def new
    @movie = Movie.new
  end

# edit_movie GET    /movies/:id/edit(.:format) movies#edit

  def edit
    @movie = Movie.find(params[:id])
  end

#      movie GET    /movies/:id(.:format)      movies#show
  def show
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
  end

#            PATCH  /movies/:id(.:format)      movies#update
  def update
    movie = Movie.find(params[:id])
    movie.update(movie_params)
    redirect_to '/movies'
  end
#            PUT    /movies/:id(.:format)      movies#update
#            DELETE /movies/:id(.:format)      movies#destroy
  def destroy
    Movie.delete(params[:id])
    redirect_to '/movies'
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :desc)
  end

end
