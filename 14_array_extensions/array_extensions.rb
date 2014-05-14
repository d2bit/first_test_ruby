class Array
	def sum
		self.reduce(0, :+)
	end
	def square
		self.map { |a| a * a }
	end
	def square!
		self.map! { |a| a * a }
	end
end