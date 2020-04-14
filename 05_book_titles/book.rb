class Book
	attr_accessor :title
# write your code here
	def title=(word)
		@title = book_titleize(word)
	end

	def book_titleize(word)
		arr = word.split(" ")
		arr = arr.map{|i| book_title(i)}
		arr[0] = arr[0].capitalize()
		return arr.join(" ")
	end

	def book_title(word)
		if ["and", "the", "over", "in", "of", "a", "an"].include?(word)
			return word
		end
	return word.capitalize()
end

end

