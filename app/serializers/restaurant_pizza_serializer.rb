class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :pizzas
  # has_one :restaurant

  # belongs_to :pizza_id
  # belongs_to :restaurant_id
end
