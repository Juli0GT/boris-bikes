#require 'bike'
class DockingStation
attr_accessor :bikes
attr_accessor :capacity
attr_accessor :broken
DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken = []
  end

  def release_bike
    fail 'No bike available' if dock_empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Station is at capacity' if dock_full?
    if bike.working?
      @bikes << bike
    else
      @broken << bike
    end
  end

  private

  def dock_full?
    @bikes.length >= @capacity
  end

  def dock_empty?
    @bikes.empty?
  end

end
