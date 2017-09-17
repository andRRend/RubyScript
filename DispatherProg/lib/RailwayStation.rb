require_relative 'Train'
require_relative 'Route'
require_relative 'InstanceCounter'

  class RailwayStation
    include InstanceCounter
    # Имеет название, которое указывается при ее создании
    # Может принимать поезда
    # Может показывать список всех поездов на станции, находящиеся в текущий момент
    # Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
    # Может отправлять поезда (при этом, поезд удаляется из списка поездов, находящихся на станции).
    attr_reader :train_list
    attr_reader :name
    attr_accessor :instance_count

    @@instance_count = 0
    @@station_list = []

      def self.all
        @@station_list
      end


    # UInterfaces

    def initialize name
      register_instance
      @name = name
      @train_list = []
      puts "Станция #{self.name} создана"
      @@station_list << self
    end

    def accept_train train
      @train_list << train
      train.to_station! self
    end

    def send_train (train,station)
      @train_list.delete train
      to_station! station
    end

  end
