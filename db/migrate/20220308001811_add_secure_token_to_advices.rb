class AddSecureTokenToAdvices < ActiveRecord::Migration[6.1]
  def change
    add_column :advices, :secure_token, :string, null: false
    add_index :advices, :secure_token, unique: true
  end
end
