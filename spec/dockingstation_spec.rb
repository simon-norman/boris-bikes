# In spec/dockingstation_spec.rb
require './lib/dockingstation.rb'

describe DockingStation do
  it 'responds to release_bike method' do
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to(:release_bike)
  end

  it 'returns a new bike' do
    dockingstation = DockingStation.new

    expect(dockingstation.release_bike.working?).to eq(true)
  end

  it 'responds to return bike' do
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to(:return_bike)
  end

  it "responds to bike" do
    dockingstation = DockingStation.new
    expect(dockingstation.bike.class).to eq Bike
  end
end
