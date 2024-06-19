class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :summary
      t.string :user
      t.text :image
      t.timestamps
    end
  end
end
