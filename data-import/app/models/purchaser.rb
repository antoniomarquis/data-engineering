class Purchaser < ActiveRecord::Base
  attr_accessible :item_description, :item_price, :merchant_address, :merchant_name, :name, :purchase_count


	 def data_import
	  File.readlines("example_input.tab")[1..-1].each do |f|
		lines = f.lines
		lines.each do |l|
	     name, item_description, item_price, purchase_count, merchant_address, merchant_name = l.strip.split('\t')
	      pur = Purchaser.new(name: name, item_description: item_description, item_price: item_price, 
	       purchase_count: purchase_count, merchant_address: merchant_address, merchant_name: merchant_name)
	      pur.save
		end
	  end
	 end

end
