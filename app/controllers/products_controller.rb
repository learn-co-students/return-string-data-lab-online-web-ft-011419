class ProductsController < ApplicationController

    # index of products
    def index
        @products = Product.all
    end

    # new product
    def new
        @product= Product.new
    end

    def show
    end
    
    # create product
    def create
        product = Product.create!(product_params)
        redirect_to products_path
    end

    # determine inventory status
    def inventory
        product = Product.find(params[:id])
        # if the product id is found render :plain for product 
        # if the inventory is greater than zero
        render plain: product.inventory > 0 ? true : false
    end

    # description of product
    def description
        product = Product.find(params[:id])
        # find the product by the id and render the product description
        render plain: product.description
    end

    def destroy
        Product.destroy_all
    end
    

    # can now add inventory int and description to strong params
    # add inventory and description to the products database to pass tests

    private
    
    def product_params
        params.require(:product).permit(:name, :price, :inventory, :description)
    end

end
