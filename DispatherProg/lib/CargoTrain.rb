require_relative 'Train'
require_relative 'Wagon'

  class CargoTrain < Train

    def initialize (train_number=2,speed=0,current_station)
      super
      @train_type = "Cargo"
      puts "Грузовой поезд под номером #{train_number} создан"
    end

  end
