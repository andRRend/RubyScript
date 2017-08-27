require_relative 'Train'
require_relative 'Route'

  class RailwayStation
    # Имеет название, которое указывается при ее создании
    # Может принимать поезда
    # Может показывать список всех поездов на станции, находящиеся в текущий момент
    # Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
    # Может отправлять поезда (при этом, поезд удаляется из списка поездов, находящихся на станции).
    attr_accessor :count_train

    def initialize name
      @name = name
    end

    def show_train_type train
      puts "#{@type}"
    end

    def departure_train
      
    end

    def method_name

    end
  end
