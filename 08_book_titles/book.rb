class Book
	def title=(title)
		except = %w(and or in the of a an)
		@title = title.capitalize.split(' ').inject([]) { |arr, str| arr << (except.include?(str) ?  str : str.capitalize); arr }.join(' ')
	end
	def title
		@title
	end
end