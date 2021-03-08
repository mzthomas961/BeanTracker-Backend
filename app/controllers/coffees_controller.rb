class CoffeesController < ApplicationController
    def index
        @coffees = Coffee.all
        render json: @coffees
    end

    def show
        @coffee = Coffee.find(params[:id])
        render json: @coffee
    end


    def create
        @coffee = Coffee.create(coffee_params)
        render json: @coffee 
    end


    def update
        @coffee = Coffee.find(params[:id])
        @coffee.update(Coffees_params)
        render json: @coffee
    end


    def destroy
        @coffee = Coffee.find(params[:id])
        @coffee.destroy
        render json: @coffee
    end


    # def count
    #     render json: {count: Coffee.count}
    # end

    # def sum
    #     total = params[:arrayOfNums].sum
    #     render json: {"here is your sum": total}
    # end



    private


    def coffee_params
        # params.require(:coffee).permit(:name, :image, :likes)
        params.permit(:name)
    end

end
