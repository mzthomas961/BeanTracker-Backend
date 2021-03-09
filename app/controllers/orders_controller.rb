class OrdersController < ApplicationController
    def index
        @orders = Order.all
        render json: @orders
    end

    def show
        @order = Order.find(params[:id])
        render json: @order
    end


    def create
        @order = Order.create(order_params)
        render json: @order 
    end


    def update
        @order = Order.find(params[:id])
        @order.update(orders_params)
        render json: @order
    end


    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        render json: @order
    end


    # def count
    #     render json: {count: order.count}
    # end

    # def sum
    #     total = params[:arrayOfNums].sum
    #     render json: {"here is your sum": total}
    # end



    private


    def order_params
        # params.require(:order).permit(:name, :image, :likes)
        params.permit(:name, :image)
    end
end
