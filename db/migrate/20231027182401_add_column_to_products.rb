class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :text2, :string
  end
end
