class AddLikesToBook < ActiveRecord::Migration[5.2]
  def change
  	add_column :books, :likes, :integer, null: false
  end
end
