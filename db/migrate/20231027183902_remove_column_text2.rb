class RemoveColumnText2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :text2
  end
end
