class Rating
  attr_accessor :score, :movie, :viewer

  @@all = []

  def self.all
    @@all
  end
  
  def initialize(score, movie, viewer)
    @score  = score
    @movie  = movie
    @viewer = viewer
    @@all << self
  end
end
