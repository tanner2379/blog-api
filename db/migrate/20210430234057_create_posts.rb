class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :body
      t.string :slug, unique: true

      t.timestamps
    end
  end
end
