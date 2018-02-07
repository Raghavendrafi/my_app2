class ProductsController < ApplicationController

	def index	
		if params[:cat_id]
			@products = Category.find(params[:cat_id]).products
		else
			@products = Product.all
		end
	end

	def new
		@product = Product.new
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def create
  		@product = Product.new(product_params)

  		if @product.save!
  			redirect_to products_path
  		else
  			render :new
  		end
  	end

  	def update
  		@product = Product.find(params[:id])

  		if @product.update_attributes(product_params)
  			redirect_to product_images_path
  		else
  			render :edit
  		end
  	end

  	def destroy
   		Product.find(params[:id]).destroy
   		redirect_to products_path
	end

end

private

def product_params
	params.require(:product).permit(:title,:price,:images,:category_id,:p_images)	
end
