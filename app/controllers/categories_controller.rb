class CategoriesController < ApplicationController

	def index
		@categories= Category.all
	end

	def new
		@category= Category.new
	end

	def create
		@category= Category.new(category_params)
		if @category.save!
			redirect_to categories_path
		else
			render :new
		end
	end
	def edit
  	@category= Category.find(params[:id])
    end

	def update
		@category= Category.find(params[:id])
		if @category.update(category_params)
			redirect_to categories_path
		end
  end


private

def category_params
	params.require(:category).permit(:name,:product)
end
end
