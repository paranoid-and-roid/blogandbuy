class Review < ActiveRecord::Base
  attr_accessible :accepted, :film_id, :post, :user_id, :filmname, :email, :score
  belongs_to :film
  belongs_to :user

  validates_presence_of :post, :message => ' cannot be empty. Please complete your review before submitting!'
  validates_presence_of :score, :message => ' cannot be empty. Please provide a score before submitting!'
  validates_numericality_of :score, :greater_than_or_equal_to => 0
  validates_numericality_of :film_id, :user_id

  def average_score
   film.my_average_score(film_id)
  end

end
