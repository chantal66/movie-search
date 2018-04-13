class SearchController < ApplicationController

  def index
    title = params[:search]
    @results = Movie.find_stores(title)
    @total = Movie.total_movies(title)
    @searches = SearchTerm.create(value: params[:search])
    @past_searches = SearchTerm.all
  end
end
