class AddYakushokuToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :yakushouku, :text
  end
end
