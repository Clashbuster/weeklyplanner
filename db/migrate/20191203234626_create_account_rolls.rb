class CreateAccountRolls < ActiveRecord::Migration[6.0]
  def change
    create_table :account_rolls do |t|
      t.integer :account_id
      t.integer :roll_id

      t.timestamps
    end
  end
end
