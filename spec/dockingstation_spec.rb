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

  it "can show the bikes in dock" do
    dockingstation = DockingStation.new
    
    dockingstation.bikes.each do |bike|
      expect(bike.class).to eq Bike
    end
  end

  it "raises exception on release_bike when no more bikes left" do
    dockingstation = DockingStation.new

    3.times { dockingstation.release_bike }
    
    expect { dockingstation.release_bike }.to raise_error
  end
end
