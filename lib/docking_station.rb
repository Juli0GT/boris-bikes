require_relative 'bike.rb'

class DockingStation
	DEFAULT_CAPACITY = 20

	def initialize(capacity=DEFAULT_CAPACITY)
		@capacity = capacity
		@bikes = []
	end

	def release_bike
		raise "No bikesexit available."	if empty?
		@bikes.pop
	end

	def dock(bike)
		raise 'Docking station full' if full?
		@bikes << bike
	end

	private

	attr_reader :capacity

	def full?
		@bikes.count >= @capacity
	end

	def empty?
		@bikes.empty?
	end
	
end
