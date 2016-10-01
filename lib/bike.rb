class Bike

	def report_broken
		@broken = true
	end

	def report_working
		@working = true
	end 

	def broken?
		@broken
	end

	def working?
		@working
	end
end
