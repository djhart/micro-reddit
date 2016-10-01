class AddUserRefToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :post, foreign_key: true
    remove_column :comments, :author, :string
    remove_column :comments, :author_id, :integer
  end
end
