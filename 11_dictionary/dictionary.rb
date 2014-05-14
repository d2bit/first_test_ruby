class Dictionary
	attr_accessor :entries, :keywords

	def initialize
		@entries = {}
	end

	def add(hash)
		if hash.class == Hash
			@entries.merge!(hash)
		else
			@entries[hash] = nil
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(key)
		@entries.has_key?(key)
	end

	def find(key)
		@entries.select { |k, v| k.include?(key) }
	end

	def printable
		str = []
		@entries.sort.each {|k,v| str << "\[#{k}\] \"#{v}\"" }
		str.join("\n")
	end

end