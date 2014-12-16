#!/usr/bin/env ruby

$LOAD_PATH << "."
require "shop"
require "csv"

class User
  include Shop
  def initialize(user_name)
    @user_name = user_name
  end

  def buy(product_id, credit_card,cvv)
    arr = CSV.read("shopInventory.csv","r")
    CSV.open("shopInventory.csv","w") do |product|
      for entry in arr
          if entry[0].to_i == product_id
            entry[3] = entry[3].to_i - 1
          end
          product << entry
      end
    end
    CSV.open("orders.csv","a+") do |product|
      product << [product_id, @user_name, credit_card, cvv]
    end
  end

  def list_product
    Shop.list_product
  end

  def search_product(product_name)
    Shop.search_product(product_name)
  end
end

#u = User.new("Taha")
#u.buy(2,1555555512154,789)