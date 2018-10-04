class ReaddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, 'decimal USING CAST (price AS decimal)'
  end
end
