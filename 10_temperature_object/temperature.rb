class Temperature

	def initialize(hash)
		@f = hash[:f]
		@c = hash[:c]
	end

	def in_fahrenheit
		@f or (@c * 9.0 / 5 + 32).round(2)
	end
	def in_celsius
		@c or (@f - 32) * 5.0 / 9
	end

	def Temperature::from_celsius(c)
		self.new({c: c})
	end
	def Temperature::from_fahrenheit(f)
		self.new({f: f})
	end
end


class Celsius < Temperature

	def initialize(n)
		@c = n
	end
end


class Fahrenheit < Temperature
	
	def initialize(n)
		@f = n
	end
end