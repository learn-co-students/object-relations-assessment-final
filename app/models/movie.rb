class Movie
  attr_accessor :title

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_title(title)
    self.all.find {|movie| movie.title == title}
  end

  def initialize(title)
    self.title=(title)
    self.class.all << self
  end

  def ratings
    Rating.all.select {|rating| rating.movie == self }
  end

  def viewers
    ratings.map {|rating| rating.viewer }
  end

end
