class Film < ActiveRecord::Base

  attr_accessible :actors, :description, :director, :filmname, :image_url, :length, :price, :release_year, :score
  has_many :reviews, :order => "created_at DESC"
  has_many :users, :through => :reviews
  has_many :line_items
  before_destroy :check_that_no_line_items_exist

  validates_presence_of :actors, :message => ' cannot be empty. Please provide at least one actor'
  validates_presence_of :description, :message => ' cannot be empty. please give some film synopsis'
  validates_presence_of :director, :message => ' cannot be empty. Please provide a director name'
  validates_presence_of :filmname, :message => ' cannot be empty. Please provide the film\'s title'
  validates_presence_of :image_url, :message => ' cannot be empty. Please provide an image'
  validates_presence_of :length, :message => ' cannot be empty. Please provide a length for the film in hours and minutes'
  validates_presence_of :price, :message => ' cannot be empty. Please provide a price for the DVD'
  validates_numericality_of :price, :greater_than_or_equal_to => 0.01
  validates_presence_of :release_year, :message => ' cannot be empty. Please provide a year of release'
  validates_numericality_of :price, {greater_than_or_equal_to: 0.01}

  validates_uniqueness_of :filmname
  validates_length_of :release_year, :is => 4
  validates_numericality_of :release_year,
                            :greater_than => 1895, :less_than_or_equal_to => Time.now.year,
                            :only_integer => true
  validates :image_url, format: { with: %r{\.(gif|jpg|png)$}i, message: 'must be in the form GIF, JPG or PNG image.' }

  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['filmname LIKE ?', "%#{search_query}%"])
    else
      find(:all, :order => 'filmname')
    end
  end

  def check_that_no_line_items_exist
    if line_items.empty?
      return true
    else
      errors.add(:base, 'There are line items present')
      return false
    end
  end

  def my_average_score(film_id)
    film = Film.find(film_id)
    total = film.reviews.to_a.sum(&:score).to_f
    number = film.reviews.to_a.count(&:score)
    average = total / number
    average.round(2)
  end

end