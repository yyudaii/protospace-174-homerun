class AddShozokuToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :shozoku, :text
  end
end
