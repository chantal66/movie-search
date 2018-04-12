class MovieService

  attr_reader :title

  def initialize(title)
    @title = title
    @conn = Faraday.new(url: "https://api.themoviedb.org/") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["movie_search_key"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def find_movies
    get_url("3/search/movie?api_key=#{ENV['movie_search_key']}&query=#{title}")
  end

  def get_url(url)
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:results]
  end

  def self.find_movies(title)
    new(title).find_movies
  end

  def total_movies
    get_url_for_total("3/search/movie?api_key=#{ENV['movie_search_key']}&query=#{title}")
  end

  def get_url_for_total(url)
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:total_results]
  end

  def self.total_movies(title)
    new(title).total_movies
  end
end