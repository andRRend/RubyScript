require_relative 'RailwayStation'
require_relative 'Route'

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
    attr_reader :wagons , :current_station

    def initialize(type="Passanger",wagons=0,speed=0)
      @@train_type = type
      @wagons = wagons
      @speed = speed
      @current_station
    end

    def manege_wagon count
      count.positive? ? @wagons +=1 : @wagons -=1
    end

    def set_route route
      @set_route = route
    end

    def go_to_station index_station

    end

    def go_to_next_station

    end

    def show_back_current_next_station

    end
  end
