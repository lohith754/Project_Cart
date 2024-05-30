class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :estore


  def total_price
	estore.price * quantity
  end
end
