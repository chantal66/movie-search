class SearchController < ApplicationController
  def index
    @title = params[:search]
    @conn = Faraday.new(url: "https://api.themoviedb.org/") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["movie_search_key"]
      faraday.adapter Faraday.default_adapter
    end

    response = @conn.get("3/search/movie?api_key=#{ENV['movie_search_key']}&query=#{@title}")
    results = JSON.parse(response.body, symbolize_names: true)
    binding.pry

  end
end