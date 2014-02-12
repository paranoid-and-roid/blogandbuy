require 'test_helper'

class FilmTest < ActiveSupport::TestCase
   test "all film details must be filled in" do
    film = Film.new
    assert film.invalid?
    assert film.errors[:filmname].any?
    assert film.errors[:description].any?
    assert film.errors[:director].any?
    assert film.errors[:actors].any?
    assert film.errors[:image_url].any?
    assert film.errors[:price].any?

    film.price = -1
      assert film.invalid?
     film.errors[:price]
    film.price = 0
    assert film.invalid?
    film.errors[:price]
    film.price = 1
    assert film.valid?

    assert film.errors[:score].any?
    assert film.errors[:length].any?
    assert film.errors[:release_year].any?
   end
end
