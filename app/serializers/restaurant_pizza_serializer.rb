class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :price
  # has_one :pizza
  # has_one :restaurant

  belongs_to :pizza
  belongs_to :restaurant
end
