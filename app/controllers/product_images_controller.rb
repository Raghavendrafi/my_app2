class ProductImagesController < ApplicationController
  def index

  	@product_images = ProductImage.all
  end

  def new
  	@product_image = ProductImage.new
  end

  def show
  	#@product_image = ProductImage.find(params[:id])
  end

  def create
  	@product_image = ProductImage.new(product_image_params)

  	if @product_image.save!
  		redirect_to product_images_path
  	else
  		render :new
  	end
  end
end

private

def product_image_params
	params.require(:product_image).permit(:id,:product_id,:image)
end

