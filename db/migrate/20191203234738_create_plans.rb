class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :location
      t.string :name
      t.string :day
      t.string :description
      t.integer :account_id
      t.integer :group_id

      t.timestamps
    end
  end
end
