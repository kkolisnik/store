class Product < ActiveRecord::Base
  attr_accessible :category, :description, :id, :image, :price, :product, :product_number, :sale, :sale_price
  validates_inclusion_of :category, :in => ['Mens', 'Womens']
  
  validates_presence_of :id, :product, :price, :category, :image

  validates_uniqueness_of :product_number
  
end
