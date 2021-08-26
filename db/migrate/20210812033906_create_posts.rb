class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :board
      t.string :user_id
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
