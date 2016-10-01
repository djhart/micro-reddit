class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :author
      t.integer :author_id

      t.timestamps
    end
  end
end
