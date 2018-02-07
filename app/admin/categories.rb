ActiveAdmin.register Category do
	permit_params do
		Category.attribute_names
	end


end
