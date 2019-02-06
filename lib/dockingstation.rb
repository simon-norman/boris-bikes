require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
    def initialize
        @capacity = 20
        @bikes = []
        @capacity.times { @bikes << Bike.new }
    end

    def release_bike
        bike = @bikes.pop
        if bike != nil then bike else raise 'There are no bikes left' end
    end

    def return_bike(bike)
      if @bikes.length < @capacity then @bikes << bike else raise "The station is full" end
    end
end
