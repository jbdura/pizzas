class RestaurantPizzasController < ApplicationController


    ############################################################################################################################
    
    # GET /restaurantpizzas/
    def index
        rest_pizzas = RestaurantPizza.all
        render json: rest_pizzas
    end

    # GET /restaurantpizzas/:id
    def show
        rest_pizz = RestaurantPizza.find_by(id: params[:id])
        if rest_pizz
            render json: rest_pizz
        else
            render json: { error: "Restaurant Pizza not found" }, status: :not_found
        end
    end

############################################################################################################################
    
    #CREATE /restaurantpizzas/
    def create
        rest_pizz = RestaurantPizza.create(restpizz_params)
        render json: rest_pizz, status: :created
    end

############################################################################################################################

    # PATCH /restaurantpizzas/:id
    def update
        rest_pizz = RestaurantPizza.find_by(id: params[:id])
        if rest_pizz
            rest_pizz.update(restpizz_params)
            render json: rest_pizz
        else
            render json: { error: "Restaurant Pizza not found" }, status: :not_found
        end
    end

############################################################################################################################

    # DELETE /restaurantpizzas/:id
    def destroy
        rest_pizz = RestaurantPizza.find_by(id: params[:id])
        if rest_pizz
            rest_pizz.destroy
        else
            render json: { error: "Restaurant Pizza not found" }, status: :not_found
        end
        head :no_content
    end

############################################################################################################################

    private

    # def find_restaurantpizza
    #     RestaurantPizza.find_by(:id params[:id])
    # end

    def restpizz_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

end
