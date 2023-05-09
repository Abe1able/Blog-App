class AddUserRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :author, foreign_key: { to_table: :users }, null: false
  end
end
