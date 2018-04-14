class SearchTermController < ApplicationController

  def index
    @sorted_searches = SearchTerm.sort_list(params[:sort])
  end
end