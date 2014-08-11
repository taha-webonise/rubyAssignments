require "csv"
module Shop
  def self.list_product
    products = CSV.foreach("shopInventory.csv",headers:true) do |item|
	   print item
	end
  end
  def self.search_product(product_name)
    products = CSV.foreach("shopInventory.csv",headers:true) do |item|
      if product_name.casecmp(item["product_name"].to_s) == 0
        print item
      end
    end
  end
end