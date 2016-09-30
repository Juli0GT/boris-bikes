class DockingStation
attr_reader :bikes
attr_reader :capacity
DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bike available' if dock_empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Station is at capacity' if dock_full?
    @bikes << bike
  end

  private

  def dock_full?
    @bikes.length >= @capacity
  end

  def dock_empty?
    @bikes.empty?
  end

end
