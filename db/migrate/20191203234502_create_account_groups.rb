class CreateAccountGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :account_groups do |t|
      t.integer :account_id
      t.integer :group_id

      t.timestamps
    end
  end
end
