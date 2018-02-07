class AddImageToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :p_images, :string
  end
end
