class AddLikesToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :likes, :integer, null: false, default: 0
  end
end
