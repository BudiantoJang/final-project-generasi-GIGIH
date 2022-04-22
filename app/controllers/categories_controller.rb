class CategoriesController < ApplicationController
    
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(
            name: params[:name]
        )
        if @category.save
            flash[:notice] = "Category created successfully"
            redirect_to("/categories")
        else
            render("categories/new")
        end
    end

    def destroy
        @category = Category.find_by(id: params[:id])
        @category.destroy
        flash[:notice] = "Category successfully deleted"
        redirect_to("/categories")
    end
end
