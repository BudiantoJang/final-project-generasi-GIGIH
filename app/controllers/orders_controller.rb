class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def show 
        @order = OrderDetail.where(order_id: params[:id])
    end

    def new

    end

    def create
        @order = Order.new(
            customer_id: params[:id],
            final_price: 0,
            status: "NEW"
        )
        flash[:notice] = "Created new transaction"
        @order.save
        redirect_to("/customers")
    end

    def destroy
        @order = Order.find_by(id: params[:id])
        flash[:notice] = "Transaction deleted!"
        @order.destroy
        redirect_to("/customers")
    end

    def revenue
        @orders = Order.all
    end

    def revenue_detail
        selected_date = Date.parse(params[:date])
        @orders = Order.where(created_at: selected_date.beginning_of_day..selected_date.end_of_day).where(status: "PAID")
    end

    def change_status
        @order = Order.find_by(id: params[:id])
        if @order.status == "NEW"
            @order.status = "PAID"
        elsif @order.status == "PAID"
            @order.status = "NEW"
        end
        @order.save
        flash[:notice] = "Successfully change status"
        redirect_to("/customers")
    end
end
