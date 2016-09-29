class DockingStation
attr_reader :bike

  def release_bike
    fail 'No bike available' unless @bike
    @bike
  end

  def accept(bike)
    fail 'Station is at capacity' if @bike
    @bike=bike
  end

end
