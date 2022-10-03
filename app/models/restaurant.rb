class Restaurant < ApplicationRecord
    has_many :pizas, through: :restaurant_pizza
end
