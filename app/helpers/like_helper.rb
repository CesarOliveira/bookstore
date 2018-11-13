module LikeHelper
  def like_book(book)
  	Book.transaction do
  		book.increase_like
    	book.category.increase_like	
  	end
  end
end
