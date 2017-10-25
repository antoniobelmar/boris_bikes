require 'docking_station'
describe DockingStation do
  it {expect(DockingStation.new).to respond_to(:release_bike)}
  it "gets a bike" do
    station = DockingStation.new
    expect(station.release_bike).to be_instance_of(Bike)
  end
  it "expects the bike to be working" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq(true)
  end
end
