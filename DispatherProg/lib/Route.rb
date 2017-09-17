require_relative 'Train'
require_relative 'RailwayStation'
require_relative 'InstanceCounter'

  class Route
  # Имеет начальную и конечную станцию, а также список промежуточных станций
  # Может добавлять станцию в список
  # Может удалять станцию из списка
  # Может выводить список всех станций по-порядку от начальной до конечной
    attr_reader :station_list

    # include InstanceCounter

    @@instance_count = 0

    def self.instances
      @@instance_count += 1
    end

    # UInterface

    def initialize(start_station,last_station)
      register_instance
      @route = []
      @route << start_station
      @route << last_station
      puts "Маршрут с начальной станцией #{start_station.name} и конечной станцией #{last_station.name} создан"
    end

    def register_instance
      self.class.instances
    end

    def add_station station,index
      @route[index] = station
      puts "Станция #{station.name} добалена в маршрут на позицию #{index}"
    end

    def delete_station index
      @route.delete_at (index)
      puts "Станция #{station.name} удалена из маршрута"
    end

    def station_list
      count = -1
      @route.each { |item| puts "#{count += 1} -- #{item.name}" }
    end

  end
