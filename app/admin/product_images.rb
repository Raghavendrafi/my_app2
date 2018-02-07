ActiveAdmin.register ProductImage do
	permit_params :p_images, :product_id

	belongs_to :product

end
