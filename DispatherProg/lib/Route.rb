require_relative 'Train'
require_relative 'RailwayStation'

  class Route
  # Имеет начальную и конечную станцию, а также список промежуточных станций
  # Может добавлять станцию в список
  # Может удалять станцию из списка
  # Может выводить список всех станций по-порядку от начальной до конечной
  attr_reader :route

    def initialize
      # @route = {1 => "station_1", 2 => "station_2", 3 => "station_3"}
      @route = ['Stavropol','MinVody','Kislovodsk','Pyatigorsk','Essentuki']
    end

    def new_station station
      # hash = {number => name_station}
      # @route.merge!(hash)
      @route << station
    end

    def delete_station number_station
      # @route.delete(number)
      @route.delete_at (number_station)
    end

    def show_list
      count = 0
      @route.each { |item| puts "#{count += 1} -- #{item}" }
    end
  end
