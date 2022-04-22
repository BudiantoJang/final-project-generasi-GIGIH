class CustomersController < ApplicationController
    def index
       @customers = Customer.all 
       @orders = Order.all
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.new(name: params[:name], email: params[:email])
        if @customer.save
            flash[:notice] = "Created new user"
            redirect_to("/customers")
        else
            render("customers/new")
        end
    end

    def destroy
        @customer = Customer.find_by(id: params[:id])
        @customer.destroy
        flash[:notice] = "deleted customer"
        redirect_to("/customers")
    end
end
