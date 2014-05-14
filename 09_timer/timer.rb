class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		#Time.at(@seconds-3600).strftime('%T')
		"%02d:%02d:%02d" % [@seconds / 3600, @seconds / 60 % 60, @seconds % 60]
	end
end