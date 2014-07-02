require 'rails_helper'

RSpec.describe MoviesController, :type => :controller do


describe MoviesController do

  describe '#index' do
    it 'lists moves in the database' do
      m1, m2 = Movie.create(title: 'one'), Movie.create(title: 'two')
      get :index
      expect(assigns(:movies)).to match_array [m1,m2]
    end
  end

end

end
