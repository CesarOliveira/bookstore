class AbstractModel < ApplicationRecord
  self.abstract_class = true

  #move to a module
  def increase_like
    update_attributes(likes: self.likes + 1)
  end
end
