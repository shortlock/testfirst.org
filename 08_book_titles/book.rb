class Book

	attr_reader :title

	def title=(title)

		@title = title.capitalize!

		small_words = ["a", "an", "and", "as", "at", "but", "by", "for", "in", "of", "on", "or", "over", "nor", "the", "to"]
		temp_title = @title.split(" ")
		temp_title.each do |word|
			if !small_words.include?(word)
				word.capitalize!
			end
		end
		@title = temp_title.join(" ")
		return @title
	end

end
