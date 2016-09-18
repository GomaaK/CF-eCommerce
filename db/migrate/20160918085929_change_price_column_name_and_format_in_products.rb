class ChangePriceColumnNameAndFormatInProducts < ActiveRecord::Migration
  def change
  	change_column :products, :price_in_cents , :decimal
  	rename_column :products, :price_in_cents , :price
  end
end
