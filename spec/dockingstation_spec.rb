# In spec/dockingstation_spec.rb
require './lib/dockingstation.rb'

describe DockingStation do
  before(:each) do
    @dockingstation = DockingStation.new
  end

  it 'responds to release_bike method' do
    expect(@dockingstation).to respond_to(:release_bike)
  end

  it 'returns a new bike' do
    expect(@dockingstation.release_bike.working?).to eq(true)
  end

  it 'responds to return bike' do
    expect(@dockingstation).to respond_to(:return_bike)
  end

  it "can show the bikes in dock" do
    @dockingstation.bikes.each do |bike|
      expect(bike.class).to eq Bike
    end
  end

  it "raises exception on release_bike when no more bikes left" do
    20.times { @dockingstation.release_bike }

    expect { @dockingstation.release_bike }.to raise_error('No bikes left')
  end

  it "raises exception on return bike and station being full" do
    expect { @dockingstation.return_bike(Bike.new) }.to raise_error('Docking Station is full')
  end

  it "initially contains 20 bikes (on creation)" do
    expect(@dockingstation.bikes.length).to eq(20)
  end
end
