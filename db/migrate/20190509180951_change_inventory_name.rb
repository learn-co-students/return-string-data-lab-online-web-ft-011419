class ChangeInventoryName < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :intentory, :inventory
  end
end
