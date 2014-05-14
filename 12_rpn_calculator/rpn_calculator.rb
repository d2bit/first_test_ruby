class RPNCalculator

	def initialize
		@arr = []
	end

	def value
		@arr[-1] or 0
	end

	def push(n)
		@arr.push(n)
	end

	def plus
		raise Exception, 'calculator is empty' if @arr.length < 2
		@arr.push(@arr.pop + @arr.pop)
	end

	def minus
		raise Exception, 'calculator is empty' if @arr.length < 2
		@arr.push(-@arr.pop + @arr.pop)
	end

	def divide
		raise Exception, 'calculator is empty' if @arr.length < 2
		@arr.push(1.0/@arr.pop * @arr.pop)
	end

	def times
		raise Exception, 'calculator is empty' if @arr.length < 2
		@arr.push(@arr.pop * @arr.pop)
	end

	def tokens(str)
		str.split(' ').inject([]) do |a, t|
			if t =~ /^\d+$/
				a.push(t.to_i)
			else
				a.push(t.to_sym)
			end
			a
		end
	end

	def evaluate(str)
		tokens(str).each do |t|
			if t.class == Fixnum
				push(t)
			elsif t == :+
				plus
			elsif t == :-
				minus
			elsif t == :*
				times
			elsif t == :/
				divide
			else
				raise Exception, 'invalid token'
			end
		end
		value
	end

end