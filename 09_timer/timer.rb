class Timer

	attr_reader :seconds

	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		for_now = Time.new(2015, 05, 14, 0, 0, 0)
		for_now += @seconds
		return for_now.strftime("%T")
	end

	def padded(seconds)
		num = seconds.to_s
		if num.length == 1
			"0#{seconds}"
		else
			"#{seconds}"
		end
	end
end

