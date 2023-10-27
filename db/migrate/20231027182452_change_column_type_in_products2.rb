class ChangeColumnTypeInProducts2 < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :text2, "boolean USING CAST(text2 as boolean)"
  end
end
