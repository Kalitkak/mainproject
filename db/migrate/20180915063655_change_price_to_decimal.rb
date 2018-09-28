class ChangePriceToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, :decimal, using: 'price::numeric'
  end
end
