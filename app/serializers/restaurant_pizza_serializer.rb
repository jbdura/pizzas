class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :price
  # has_one :pizza
  # has_one :restaurant

  belongs_to :pizza_id
  belongs_to :restaurant_id
end
