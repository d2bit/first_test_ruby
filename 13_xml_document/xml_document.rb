class XmlDocument
	attr_accessor :indent, :spaces

	def initialize(indent=false)
		@indent = indent
		@spaces = 0
	end
=begin
	def hello(attr=nil, &block)
		if block_given?
			@spaces += 2
			"<hello>#{indent ? "\n"+" "*spaces : ''}#{block.call}#{indent ? "\n"+" "*spaces : ''}</hello>#{indent ? "\n": ""}"
		elsif attr.nil?
			'<hello/>'
		else
			key = attr.keys[0]
			value = attr.values[0]
			"<hello #{key}='#{value}'/>"
		end
	end
=end
	def send(tag_name, &block)
		if block_given?
			"<#{tag_name}>#{block.call}</#{tag_name}>"
		else
			"<#{tag_name}/>"
		end
	end

	def method_missing(m, *args, &block)
		if block_given?
			@spaces += 2
			str = "<#{m}>#{indent ? "\n"+" "*spaces : ''}#{block.call}#{indent ? " "*spaces : ''}</#{m}>#{indent ? "\n": ""}"
			@spaces -= 2
			str
		elsif args.empty?
			@spaces -= 2
			"<#{m}/>#{indent ? "\n": ""}"
		else
			key = args[0].keys[0]
			value = args[0].values[0]
			@spaces -= 2
			"<#{m} #{key}='#{value}'/>#{indent ? "\n": ""}"
		end
	end
=begin
	def send(tag_name, &block)
		if block_given?
			"<#{tag_name}>#{block.call}</#{tag_name}>"
		else
			"<#{tag_name}/>"
		end
	end

	def goodbye(attr=nil, &block)
		if block_given?
			@spaces += 2
			"<goodbye>#{indent ? "\n"+" "*spaces : ''}#{block.call}#{indent ? "\n" : ''}</goodbye>"
		elsif attr.nil?
			'<goodbye/>'
		else
			key = attr.keys[0]
			value = attr.values[0]
			"<goodbye #{key}='#{value}'/>"
		end
	end

	def come_back(attr=nil, &block)
		if block_given?
			"<come_back>#{block.call}</come_back>"
		elsif attr.nil?
			'<come_back/>'
		else
			key = attr.keys[0]
			value = attr.values[0]
			"<come_back #{key}='#{value}'/>"
		end
	end

	def ok_fine(attr=nil, &block)
		if block_given?
			"<ok_fine>#{block.call}</ok_fine>"
		elsif attr.nil?
			'<ok_fine/>'
		else
			key = attr.keys[0]
			value = attr.values[0]
			"<ok_fine #{key}='#{value}'/>"
		end
	end
=end
end