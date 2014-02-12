class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :film_id, :quantity

  belongs_to :film
  belongs_to :cart
  belongs_to :order
end
