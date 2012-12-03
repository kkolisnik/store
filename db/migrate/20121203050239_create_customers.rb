class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.integer :phone

      t.timestamps
    end
  end
end
