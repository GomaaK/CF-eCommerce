class ChangePriceColumnNameInProducts < ActiveRecord::Migration
  def change
  	rename_column :products, :price , :price_in_cents
  end
end
