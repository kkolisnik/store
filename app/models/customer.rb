class Customer < ActiveRecord::Base
  attr_accessible :city, :country, :first_name, :last_name, :phone, :postal_code, :province, :street
end
