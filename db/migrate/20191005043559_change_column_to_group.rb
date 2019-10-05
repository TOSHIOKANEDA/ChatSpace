class ChangeColumnToGroup < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :master_member, :string, null: true
  end
end
