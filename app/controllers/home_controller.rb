class HomeController < ApplicationController
  def index


   
   if params[:category].nil? then
     @category = ""
   else
     @category = params[:category]
   end
   
   if @category == "sale" then
     @products = Product.where(:sale => true)
   else
     
       @products = Product.where("category LIKE '"+@category+"%'")
   end
   
  end
  
  def show
    @product = Product.find(params[:id])
  end
end
