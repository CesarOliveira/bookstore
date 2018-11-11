module LikeHelper
	def like_book(book)
		book.increase_like
		book.category.increase_like
	end
end