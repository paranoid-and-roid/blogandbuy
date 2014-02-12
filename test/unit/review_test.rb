require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
   test "all review information must be included" do
     review = Review.new
     assert review.invalid?
   #  assert review.errors[:filmname].any?
     assert review.errors[:film_id].any?
     assert review.errors[:user_id].any?
     assert review.errors[:score].any?
     assert review.errors[:email].any?
     assert review.errors[:post].any?
   end
   end
  

