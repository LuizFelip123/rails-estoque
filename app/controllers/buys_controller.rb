class BuysController < ApplicationController
  def index
    @buys = Buy.all
  end
  def new 
    @product = Product.find(params[:product_id])
  end  
  def create 
  end  
  def save
  
  end 
  def select_buy
    @product = Product.find(params[:id])
    @clients = Client.all
  end  
end
