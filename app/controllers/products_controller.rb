class ProductsController < ApplicationController
    
  def new
  end
    
  def orders
    @quark_order = Order.find(1)
    @lepton_order = Order.find(2)
    @proton_order = Order.find(3)
  end
  
  def lepton_order
    
  end
end