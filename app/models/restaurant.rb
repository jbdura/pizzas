class Restaurant < ApplicationRecord
    has_many :pizzas, through: :restaurant_pizza
end
