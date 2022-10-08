class RestaurantPizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant

  validates :price, presence: true
  validate :price_range

  def price_range
    if price >= 1 || price == 30
      return true
    else 
      errors.add(:price, "That price is not valid")
    end
  end
  
end
