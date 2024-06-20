class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.text :catch_copy
      t.text :concept
      # t.references :user, null: false, foreign_key: true  userテーブル設定後記載
      t.timestamps
    end
  end
end
