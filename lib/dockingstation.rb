require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
    def initialize
        @bikes = []
        3.times { @bikes << Bike.new }
    end

    def release_bike
        bike = @bikes.pop
        if bike != nil then bike else raise 'There are no bikes left' end
    end

    def return_bike(bike)
      if @bikes.length < 3 then @bikes << bike else raise "The station is full" end
    end
end
