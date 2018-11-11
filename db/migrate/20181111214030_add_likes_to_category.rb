class AddLikesToCategory < ActiveRecord::Migration[5.2]
  def change
  	add_column :categories, :likes, :integer, null: false, default: 0
  end
end
