class ChangePriceFormatInProducts < ActiveRecord::Migration
  def up
  	change_column :products, :price , :integer
  end

  def down
  	change_column :product, :price, :float
  end

end
