class Movie

  attr_reader :title,
              :popularity,
              :overview,
              :release_date

  def initialize(movie)
    @title        = movie[:title]
    @popularity   = movie[:popularity]
    @overview     = movie[:overview]
    @release_date = movie[:release_date]
  end

  def self.find_stores(title)
    movie = MovieService.find_movies(title)
    movie.map do |movie|
      new(movie)
    end
  end

  def self.total_movies(title)
    MovieService.total_movies(title)
  end
end