
class Product < ApplicationRecord
	belongs_to :category

	has_many :product_images, dependent: :destroy
	accepts_nested_attributes_for :product_images, allow_destroy: true	
	
	validates_presence_of :title
   	validates_numericality_of :price, :message=>"Error Message"


end
