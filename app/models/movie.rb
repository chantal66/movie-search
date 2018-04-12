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
end