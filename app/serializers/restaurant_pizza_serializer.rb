class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :price
  # has_many :pizzas
  # has_one :restaurant

  belongs_to :pizza_id
  belongs_to :restaurant_id
end
