class RestaurantsController < ApplicationController
    
    # rescue_from ActiveRecord::RecordNotFound::RecordNotFound, with: :not_found_res
############################################################################################################################


    #GET /retaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants, include: :pizza
    end

    # GET /restaurants/:id
    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            render json: restaurant, include: :restaurant_pizzas
        else
            render json: { error: "Restaurant not found" }, status: :not_found
        end
    end

############################################################################################################################
    
    #CREATE /restaurants/
    def create
        restaurant = Restaurant.create(restaurant_params)
        render json: restaurant, status: :created
    end

############################################################################################################################

    # PATCH /restaurants/:id
    def update
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            restaurant.update(restaurant_params)
            render json: restaurant
        else
            render json: { error: "Restaurant not found" }, status: :not_found
        end
    end

############################################################################################################################

    # DELETE /restaurants/:id
    def destroy
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            restaurant.destroy
        else
            render json: { error: "Restaurant not found" }, status: :not_found
        end
        head :no_content
    end

############################################################################################################################

    private

    # def find_restaurant
    #     Restaurant.find_by(:id params[:id])
    # end

    def restaurant_params
        params.permit(:name, :address)
    end

    # def not_found_res
    #     render json: { error: "Restaurant not found" }, status: :not_found
    # end
    
end
