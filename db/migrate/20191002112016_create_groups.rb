class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :group_name, null: false, unique: true
      t.integer :user_id, null: false, foreign_key: true
      t.string :master_member, null: false
      t.string :sub_member, null: true
      t.timestamps
    end
  end
end
