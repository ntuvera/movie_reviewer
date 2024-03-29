class ReviewsController < ApplicationController

#     movie_reviews GET    /movies/:movie_id/reviews(.:format)          reviews#index
  def index
    @movie   = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
    # @reviews = Review.all
  end
#                   POST   /movies/:movie_id/reviews(.:format)          reviews#create
  def create
    review = Review.create(review_params)
    redirect_to '/movies'
  end
#  new_movie_review GET    /movies/:movie_id/reviews/new(.:format)      reviews#new
  def new
    @movie  = Movie.find(params[:movie_id])
  end
#      movie_review GET    /movies/:movie_id/reviews/:id(.:format)      reviews#show
  def show
    @review = Review.find(params[:id])
  end
# edit_movie_review GET    /movies/:movie_id/reviews/:id/edit(.:format) reviews#edit
  def edit
    movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
    @movie  = Movie.find(params[:movie_id])
  end
#                   PATCH  /movies/:movie_id/reviews/:id(.:format)      reviews#update
#                   PUT    /movies/:movie_id/reviews/:id(.:format)      reviews#update
  def update
    movie = Movie.find(params[:movie_id])
    review = Review.find(params[:id])
    review.update(review_params)
    redirect_to '/movies/#{movies.id}/reviews/#{review.id}'
  end
#                   DELETE /movies/:movie_id/reviews/:id(.:format)      reviews#destroy
  def destroy
    movie = Movie.find(params[:movie_id])
    Review.delete(params[:id])
    redirect_to '/movies'
  end

  private
  def review_params
    params.require(:review).permit(:title, :date, :rating, :desc, :movie_id)
  end

end
