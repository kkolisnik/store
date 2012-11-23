class Changenewprice < ActiveRecord::Migration
  def up
        rename_column :products, :new_price, :sale_price
  end

  def down
  end
end
