a = File.readlines("example_input.tab")[1..-1].each do |f|
	lines = f.lines
	lines.each do |l|
     name, item_description, item_price, purchase_count, merchant_address, merchant_name = l.split("\t\n")
     puts name, item_description, item_price, purchase_count, merchant_address, merchant_name
	end
end


