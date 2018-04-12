require 'rails_helper'

RSpec.describe MovieService do
  it 'returns movies for query' do
    VCR.use_cassette('services/user_can_search_movies') do
      movies = MovieService.find_movies('Iron Man')
      movies = movie.first

      expect(movie[:title]).to eq('Iron Man')
    end
  end
end