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

    def initialize(type="pass",wagons=0,speed=0,current_station='Stavropol')
      @type = type
      @wagons = wagons
      @speed = speed
      @current_station = current_station
    end

    def manege_wagon count
      count.positive? ? @wagons +=1 : @wagons -=1
    end

    def set_route set_route
      set_route = Route.new
      @set_route = set_route.route
    end

    def go_to_station name_station
      if @set_route.include?(name_station)
        @set_route.each { |item|
        puts "Поезд движится к следующей станции"
        sleep 3
        puts "Поезд прибыл на стацию #{item}"
        @current_station = item
      }
      else
        puts "Станции #{name_station} нет в маршруте"
      end
    end

    def go_to_next_station
      if @set_route
        @current_station
        puts "Поезд прибыл на следующую станцию: #{@current_station}"
      else
        puts "Конец пути"
      end
    end

    def show_back_current_next_station
      puts "Сейчас поезд на станции #{@set_route[@current_station]}"
      puts "Предидущая станция #{@set_route[@current_station-1]}"
      puts "Следующая станция #{@set_route[@current_station+1]}"
    end
  end
