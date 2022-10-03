class RestaurantPizzasController < ApplicationController

    def index
        rest_pizz = RestaurantPizza.all
        render json: rest_pizz
    end

end
