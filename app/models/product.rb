class Product < ActiveRecord::Base
  attr_accessible :active, :category, :colors_available, :date_added, :date_updated, :description, :id, :image, :limit, :old_price, :price, :product, :product_number, :sale, :size
  validates_inclusion_of :category, :in => ['Mens', 'Womens']

end
