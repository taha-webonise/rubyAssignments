#!/usr/bin/env ruby

$LOAD_PATH << "."
require "shop"
require "csv"

class Shopkeeper
  include Shop
  def add_product(product_name, price, stock_item=0, company_name="")
  	self.
  	@product_name = product_name
  	@price = price
  	@stock_item = stock_item
  	@company_name = company_name
  	CSV.read("shopInventory.csv","r").each_with_index do |val, index|
  	  @i = index
  	end
  	CSV.open("shopInventory.csv","a+") do |product|
	  product << [@i+1, @product_name, @price, @stock_item, @company_name]
  	end
  end
  
  def remove_product(product_id)
    arr = CSV.read("shopInventory.csv","r")
    CSV.open("shopInventory.csv","w") do |product|
      for entry in arr
      	  unless entry[0].to_i == product_id
      	  	product << entry
       	  end
      end
	end
  end
  def edit_product(product_id, product_name, price, stock_item, company_name)
    arr = CSV.read("shopInventory.csv","r")
    CSV.open("shopInventory.csv","w") do |product|
      for entry in arr
      	  if entry[0].to_i == product_id
      	  	entry[1] = product_name
      	  	entry[2] = price
      	  	entry[3] = stock_item
      	  	entry[4] = company_name
       	  end
       	  product << entry
      end
	end
  end
  
  def search_product(product_name)
    Shop.search_product(product_name)
  end
end

#sk = Shopkeeper.new
#sk.add_product("Router",2000,100,"asfg")
#sk.list_product
#sk.search_product("laptop")
#sk.remove_product(5)
#sk.edit_product(1, "Route", 2500, 100, "DLink")