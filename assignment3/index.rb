#!/usr/bin/env ruby

$LOAD_PATH << "."

print "Enter your choice:\n1 for ShopKeeper\n2 for User\n"
person = Integer($stdin.gets.chomp)
if person == 1
  print "Options\n1. Add product\n2. Remove product\n3. List products\n4. Search a product\n5. Edit any product"
  require "shopkeeper"
  user = ShopKeeper.new
  option = Integer($stdin.gets.chomp)
  if option == 1
  	print "Enter product name: "
  	product_name = $stdin.gets.chomp
  	print "Enter price: "
  	price = Integer($stdin.gets.chomp)
  	print "Enter stock: "
  	stock = Integer($stdin.gets.chomp)
  	print "Enter company name: "
  	company_name = $stdin.gets.chomp
  	user.add_product(product_name,2000,100,"DLink")