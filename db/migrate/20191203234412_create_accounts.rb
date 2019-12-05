class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password_digest
      # t.string :salt

      t.timestamps
    end
  end
end
