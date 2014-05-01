class Purchaser < ActiveRecord::Base
  attr_accessible :item_description, :item_price, :merchant_address, :merchant_name, :name, :purchase_count, :file


   def self.data_import(file)
    File.readlines(file, 'r')[1..-1].each do |f|
    lines = f.lines
    lines.each do |l|
       name, item_description, item_price, purchase_count, merchant_address, merchant_name = l.split("\t", 6)
        pur = Purchaser.new(name: name, item_description: item_description, item_price: item_price, purchase_count: purchase_count, merchant_address: merchant_address, merchant_name: merchant_name)
        pur.save
    end
    end
   end

end
