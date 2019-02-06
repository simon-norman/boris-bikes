require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
    def initialize
        @capacity = 20
        @bikes = []
        @capacity.times { @bikes << Bike.new }
    end

    def release_bike
      fail 'No bikes left' if empty?
        bike = @bikes.pop
    end

    def return_bike(bike)
      fail 'Docking Station is full' if full?
      @bikes << bike
    end

    def full?
      @bikes.count >= @capacity
    end

    def empty?
      @bikes.count == 0
    end

    private :full?, :empty?
end
