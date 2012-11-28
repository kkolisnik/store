class Dropsomestuff < ActiveRecord::Migration
  def up
    remove_column :products, :colors_available
    remove_column :products, :size
    remove_column :products, :active
    remove_column :products, :limit
    remove_column :products, :date_added
    remove_column :products, :date_updated
  end

  def down
  end
end
