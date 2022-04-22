class ItemsController < ApplicationController

    def index
        @items = Item.all.order(created_at: :asc)
    end

    def show
        @item = Item.find_by(id: params[:id])
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(
            name: params[:name],
            description: params[:description],
            price: params[:price],
        )
        if @item.save
                flash[:notice] = "Items created successfully"
                redirect_to("/items")    
        else
            render("items/new")
        end
    end

    def edit
        @item = Item.find_by(id: params[:id])
        @categories = Category.all
    end

    def update
        @categories = Category.all
        @item = Item.find_by(id: params[:id])
        @item.name = params[:name]
        @item.description = params[:description]
        @item.price = params[:price]
        @category_ids = params[:category].split(",")
        @item.category_ids = @category_ids
        
        if @item.save
            flash[:notice] = "Your details successfully saved"
            redirect_to("/items")
        else
            render("items/edit")
        end
    end

    def destroy
        @item = Item.find_by(id: params[:id])
        @item.destroy
        flash[:notice] = "Item successfully deleted"
        redirect_to("/items")
    end
end
