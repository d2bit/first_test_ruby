def translate(str)
	result = []

	# str.split(' ').each { |s| result << s.gsub(/^((qu|[^aeiou])*)(.*)/i, '\3\1') + 'ay' }
	str.split(' ').each do |s|
		if s.empty?
			result << s
		elsif s == s.capitalize
			result << (s.downcase.gsub(/^((qu|[^aeiou])*)([a-z]*)/i, '\3\1' + 'ay')).capitalize
		else
			result << s.gsub(/^((qu|[^aeiou])*)([a-z]*)/i, '\3\1' + 'ay')
		end
	end

	result.join(' ')
end