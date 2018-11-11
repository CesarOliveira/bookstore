class AbstractModel < ApplicationRecord
	
	self.abstract_class = true

  def increase_like
  	update_attributes(likes: self.likes + 1)
  end
end
