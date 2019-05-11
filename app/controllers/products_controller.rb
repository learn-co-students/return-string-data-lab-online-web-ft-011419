class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.create(products_params)

        redirect_to products_path
    end

    def inventory
        @inventory = Product.find(params[:id]).inventory

        if @inventory > 0
            render plain: "true"
        else
            render plain: "false"
        end
    end

    def description
        product = Product.find(params[:id])
        render plain: product.description
    end

    private

    def products_params
        params.require(:product).permit(:description, :inventory, :name, :price)
    end

end
