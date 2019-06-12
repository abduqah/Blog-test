class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :headline
      t.text :details

      t.timestamps
    end
  end
end
