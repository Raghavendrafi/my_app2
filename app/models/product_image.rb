class ProductImage < ApplicationRecord
	belongs_to :product
	mount_uploader :p_images, ImageUploader
	
end
