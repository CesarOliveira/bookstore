class Book < ApplicationRecord
  belongs_to :category

  delegate :name, to: :category, prefix: true

  def increase_like
  	update_attributes(likes: self.likes + 1)
  end
end
