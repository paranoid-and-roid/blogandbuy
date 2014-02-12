class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, dependent: :destroy

  def add_film(film_id)
    current_item = line_items.find_by_film_id(film_id)
    if current_item
      current_item.quantity += 1
  else
    current_item = line_items.build(film_id: film_id)
  end
  current_item
  end

  def total_price
    total = 0
    line_items.each do |line_item|
      total += line_item.film.price * line_item.quantity
    end
    total
  end
  end
