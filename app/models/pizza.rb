class Pizza < ApplicationRecord
    has_many :restaurants, through: :restaurant_pizza
end
