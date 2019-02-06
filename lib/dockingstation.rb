require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

    def initialize
        @bikes = []
        DEFAULT_CAPACITY.times { @bikes << Bike.new }
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
      @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.count == 0
    end

    private :full?, :empty?
end
