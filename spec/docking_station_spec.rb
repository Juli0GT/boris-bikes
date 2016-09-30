require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  it 'releases bike' do
  expect(docking_station).to respond_to(:release_bike)
  end
  it 'is working?' do
    boris = Bike.new
    expect(boris.working?).to eq true
  end
  it 'docks a bike' do
    expect(docking_station).to respond_to(:dock).with(1).argument
  end

  it 'reads attr_reader' do
    expect(docking_station).to respond_to(:bikes)
  end

  describe '#dock' do
    it 'raises an error when station is at capacity' do
      DockingStation::DEFAULT_CAPACITY.times { docking_station.dock Bike.new }
      expect {docking_station.dock(Bike.new)}.to raise_error 'Station is at capacity'
    end

    it "allows user to set capacity for a docking station" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe '#release_bike' do
    it 'raises an error when no bikes available' do
      @bikes = []
      @bikes.empty?
        expect {docking_station.release_bike}.to raise_error 'No bike available'
    end
  end

end
