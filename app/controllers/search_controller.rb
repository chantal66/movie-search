class SearchController < ApplicationController

  def index
    title = params[:search]
    @results = Movie.find_movies(title)
    @total = Movie.total_movies(title)
    @searches = SearchTerm.create(value: params[:search])
    @past_searches = SearchTerm.value_count
  end
end
