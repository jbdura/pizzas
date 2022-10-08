class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :price
  # has_many :pizzas
  # has_one :restaurant

  has_one :pizza_id
  has_one :restaurant_id
end
