class CreatePurchasers < ActiveRecord::Migration
  def change
    create_table :purchasers do |t|
      t.string :name
      t.text :item_description
      t.float :item_price
      t.integer :purchase_count
      t.string :merchant_address
      t.string :merchant_name

      t.timestamps
    end
  end
end
