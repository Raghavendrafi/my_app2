ActiveAdmin.register Product do
	
	permit_params :title,:price,:category_id, product_images_attributes: [:id, :p_images, :_destroy ]

	index do |product|
		column :title
		column :price
		column :category_id
       
       	actions
	end

	form do |f|
		f.inputs "Products" do
			f.input :category_id, :collection => Category.all {|cat| :name}
			f.input :title
			f.input :price
		end

		f.inputs 'ProductImages', :multipart => true do
    	    f.has_many :product_images, allow_destroy: true do |c|
    	    	c.input :p_images,  required: true, as: :file, :hint => c.object.p_images.present? ? image_tag(c.object.p_images.url(:thumb)) : content_tag(:span, "No Images Yet")
        	end
        end
        f.actions
    end


    show do |product|
    	attributes_table do
    	
    		row 'Images' do 
    			product.product_images.each do |img|
        			li do
        				image_tag(img.p_images.url(:small))
        			end
      			end
    		end
    		
    	end
    end

    


end
