class PizzasController < ApplicationController

    ############################################################################################################################


    #GET /pizzas
    def index
        pizzas = Pizza.all
        render json: pizzas
    end

    # GET /pizzas/:id
    def show
        pizza = Pizza.find_by(id: params[:id])
        if pizza
            render json: pizza
        else
            render json: { error: "Pizza not found" }, status: :not_found
        end
    end

############################################################################################################################
    
    #CREATE /pizzas/
    def create
        pizza = Pizza.create(piza_params)
        render json: pizza, status: :created
    end

############################################################################################################################

    # PATCH /pizzas/:id
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

    # DELETE /pizzas/:id
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

    # def find_pizza
    #     Pizza.find_by(:id params[:id])
    # end

    def pizza_params
        params.permit(:name, :ingredients)
    end

end
