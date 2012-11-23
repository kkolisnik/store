class RemoveoldPricefromproducts < ActiveRecord::Migration
  def up
    rename_column :products, :new_price, :sale_price
  end

  def down
    rename_column :products, :new_price, :sale_price
  end
end
