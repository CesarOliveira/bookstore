class Category < ApplicationRecord
	def increase_like
  	update_attributes(likes: self.likes + 1)
  end
end
