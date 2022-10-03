class PizzasController < ApplicationController

    ############################################################################################################################


    #GET /pizas
    def index
        pizzas = Pizza.all
        render json: pizzas
    end

    # GET /pizas/:id
    def show
        pizza = Pizza.find_by(id: params[:id])
        if pizza
            render json: pizza
        else
            render json: { error: "Pizza not found" }, status: :not_found
        end
    end

############################################################################################################################
    
    #CREATE /restaurants/
    def create
        pizza = Pizza.create(piza_params)
        render json: pizza, status: :created
    end

############################################################################################################################

    # PATCH /restaurants/:id
    def update
        pizza = Pizza.find_by(id: params[:id])
        if pizza
            pizza.update(pizza_params)
            render json: pizza
        else
            render json: { error: "Pizza not found" }, status: :not_found
        end
    end

############################################################################################################################

    # DELETE /restaurants/:id
    def destroy
        pizza = Pizza.find_by(id: params[:id])
        if pizza
            pizza.destroy
        else
            render json: { error: "Pizza not found" }, status: :not_found
        end
        head :no_content
    end

############################################################################################################################

    private

    # def find_restaurant
    #     Restaurant.find_by(:id params[:id])
    # end

    def pizza_params
        params.permit(:name, :ingredients)
    end

end
