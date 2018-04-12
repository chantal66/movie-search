require 'rails_helper'

RSpec.describe MovieService do
  it 'returns movies for query' do
    VCR.use_cassette('services/user_can_search_for_movies') do
      movies = MovieService.find_movies('Iron Man')
      movie = movies.first

      expect(movie[:title]).to eq('Iron Man')
      expect(movie[:popularity]).to eq(45.70837)
      expect(movie[:overview]).to eq('After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.')
      expect(movie[:release_date]).to eq('2008-04-30')
    end
  end

  it 'returns a total number of movies related to query' do
    VCR.use_cassette('services/user_can_search_for_movies') do
      total_movies = MovieService.total_movies('Iron Man')

      expect(total_movies).to eq(46)
    end
  end
end
