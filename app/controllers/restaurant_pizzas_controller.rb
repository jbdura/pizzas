class RestaurantPizzasController < ApplicationController


    ############################################################################################################################

    def index
        rest_pizz = RestaurantPizza.all
        render json: rest_pizz
    end

    # GET /pizas/:id
    def show
        rest_pizz = RestaurantPizza.find_by(id: params[:id])
        if rest_pizz
            render json: rest_pizz
        else
            render json: { error: "Restaurant Pizza not found" }, status: :not_found
        end
    end

############################################################################################################################
    
    #CREATE /restaurants/
    def create
        rest_pizz = RestaurantPizza.create(restpizz_params)
        render json: rest_pizz, status: :created
    end

############################################################################################################################

    # PATCH /restaurants/:id
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

    # DELETE /restaurants/:id
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

    # def find_restaurant
    #     Restaurant.find_by(:id params[:id])
    # end

    def restpizz_params
        params.permit(:name, :ingredients)
    end

end
