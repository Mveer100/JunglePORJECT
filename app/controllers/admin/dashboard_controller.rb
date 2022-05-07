class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => "Jungle", :password => "book" 
  def show    
    @count = { 
      products: Product.all.size ,
      categories: Category.all.size
    }
  end
end