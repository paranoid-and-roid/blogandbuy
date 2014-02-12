class Order < ActiveRecord::Base
  attr_accessible :address, :credit_card, :email, :name
  has_many :line_items, dependent: :destroy

  validates_presence_of :name, :address, :email, :credit_card
  validates :email, :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}
  validates_length_of :credit_card, :is => 16
  validates_format_of :credit_card, :with => /[0-9]/

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
