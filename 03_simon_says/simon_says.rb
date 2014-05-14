def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, times=2)
	("#{str} " * times).chop
end

def start_of_word(str, pos)
	str[0,pos]
end

def first_word(str)
	str.split(' ')[0]
end

def titleize(str)
	little_words = %w(and the over)
	str.split(/ /).inject([]) { |ar, w| w.capitalize! if !little_words.include?(w) or ar.empty?; ar.push(w) }.join(' ')
end