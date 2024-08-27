class ChangeColumnToShop < ActiveRecord::Migration[7.2]
  def change
    change_column :shops, :budget, 'integer USING CAST(budget AS integer)'
  end
end
