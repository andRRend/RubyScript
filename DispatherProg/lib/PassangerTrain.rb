require_relative 'Train'
require_relative 'Wagon'

  class PassangerTrain < Train

    def initialize (train_number=1,speed=0,current_station)
      super
      @train_type = "Passanger"
      puts "Пассажирский поезд под номером #{train_number} создан"
    end

  end
