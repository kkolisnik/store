class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :product_number
      t.string :product
      t.text :description
      t.string :image
      t.decimal :price
      t.decimal :old_price
      t.boolean :sale
      t.string :size
      t.string :category
      t.string :colors_available
      t.boolean :active
      t.integer :limit
      t.datetime :date_added
      t.datetime :date_updated

      t.timestamps
    end
  end
end
