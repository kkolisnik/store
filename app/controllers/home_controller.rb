class HomeController < ApplicationController
  def index


   
   if params[:category].nil? then
     @category = ""
   else
     @category = params[:category]

   end
   
       @products = Product.where("category LIKE '"+@category+"%'")
       
  end
  
  def show
    @product = Product.find(params[:id])
  end
end
