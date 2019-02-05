# In spec/dockingstation_spec.rb
require '../lib/dockingstation.rb'
describe DockingStation do
it "responds_to release_bike method" do
  dockingstation.release_bike
  expect(dockingstation).to respond_to(:release_bike)
end



end
