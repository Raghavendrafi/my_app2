class CreateProductImages < ActiveRecord::Migration[5.1]
  def change
    create_table :product_images do |t|
      t.binary :image
      t.integer :product_id

      t.timestamps
    end
  end
end
