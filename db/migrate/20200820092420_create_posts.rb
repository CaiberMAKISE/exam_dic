class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :software_name, null: false
      t.string :content, null: false
      t.timestamps
    end
  end
end
