class MoviesController < ApplicationController
#       movies GET    /movies(.:format)          movies#index
  def index
    @movies = Movie.all
  end

#            POST   /movies(.:format)          movies#create
  def create
  end

#  new_movie GET    /movies/new(.:format)      movies#new
  def new
  end

# edit_movie GET    /movies/:id/edit(.:format) movies#edit

  def edit
  end

#      movie GET    /movies/:id(.:format)      movies#show
  def show
  end

#            PATCH  /movies/:id(.:format)      movies#update
  def update
  end
#            PUT    /movies/:id(.:format)      movies#update
#            DELETE /movies/:id(.:format)      movies#destroy
  def destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :desc)
end
