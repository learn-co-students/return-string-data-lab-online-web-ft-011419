class AddFieldsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :intentory, :integer
    add_column :products, :description, :string
  end
end
