class OrderDetailsController < ApplicationController
    # def index
    #     @orders = Order.all
    #     @order_details = OrderDetail.all
    # end

    def new
        @customers = Customer.all
        @items = Item.all
    end

    def create
        if @item = Item.find_by(name: params[:item_name])
            @total_price = @item.price * params[:quantity].to_i
            @order_detail = OrderDetail.new(
                quantity: params[:quantity],
                total_price: @total_price,
                item_id: @item.id,
                order_id: params[:order_id]
            )
        else
            render("order_details/new")
        end

        if @order_detail.save
            total_price = @total_price
            @order = Order.find_by(id: params[:order_id])
            @order.final_price += @total_price
            @order.save
            redirect_to("/orders/#{params[:order_id]}")
        else
            render("order_details/new")
        end
    end

    def destroy
        @order_detail = OrderDetail.find_by(id: params[:id])
        @order = Order.find_by(id: params[:order_id])
        @order.final_price -= @order_detail.total_price
        @order.save
        current_order = @order_detail.order.id
        @order_detail.destroy
        flash[:notice] = "Order detail successfully deleted"
        redirect_to("/orders/#{current_order}")
    end
end
