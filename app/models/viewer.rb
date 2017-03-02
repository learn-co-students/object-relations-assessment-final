class Viewer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|viewer| viewer.full_name == name}
  end

  def self.all_names
    self.all.collect {|viewer| viewer.full_name }
  end

  def self.find_all_by_first_name(name)
    self.all.select {|viewer| viewer.first_name == name}
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def create_rating(score, movie)
    Rating.new(score, movie ,self)
  end
end
