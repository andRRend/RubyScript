require_relative 'RailwayStation'
require_relative 'Route'
require_relative 'Wagon'
require_relative 'Company'
require_relative 'InstanceCounter'


  class Train
  # набирать скорость
  # показывать текущую скорость
  # тормозить
  # показывать количество вагонов
  # прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
  # Принимать маршрут следования
  # Перемещаться между станциями, указанными в маршруте.
  # Показывать предыдущую станцию, текущую, следующую, на основе маршрута
    attr_accessor :speed
    attr_reader :wagons
    attr_reader :current_station
    attr_reader :train_number
    attr_reader :train_type

    # include Company
    # include InstanceCounter

    @@instance_count = 0
    @@train_list = []

    class << self

      def instances
        @@instance_count
      end

      def train_list
        p @@train_list
      end

      def find number
        @@train_list.each { |object|
        if object.train_number == number
          p self
        end
        }
      end

    end

    # UInterfaces

    def initialize(train_number=0,speed=0,current_station)
      register_instance
      @wagons = []
      @speed = speed
      @current_station = current_station
      @train_number = train_number
      @@train_list << self
    end

    def wagon_add! wagon
      if self.speed != 0
        puts "Поезд №#{self.train_number}движется"
      else
        if wagon.type == self.train_type
          @wagons << wagon
          puts "К поезду #{self.train_number} подцеплен новый вагон тип: #{wagon.type}"
        else
          puts "Неверный тип вагона: #{wagon.type}"
        end
      end
    end

    def set_route! route
      @set_route = Array.new
      puts "Поезду №#{@train_number} назначен маршрут"
      @set_route = route.station_list
    end

    def to_station! station
      if @set_route.include? station
        if @current_station.equal? station
          puts "Поезд №#{@train_number} уже на этой станции"
        else
          @current_station = station
          puts "Поезд №#{@train_number} прибыл на станцию #{station.name}"
        end
      else
        puts "Такой станции нет в маршруте"
      end
    end

    def register_instance
      @@instance_count += 1
    end

  end
