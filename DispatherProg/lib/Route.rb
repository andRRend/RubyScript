require_relative 'Train'
require_relative 'RailwayStation'

  class Route
  # Имеет начальную и конечную станцию, а также список промежуточных станций
  # Может добавлять станцию в список
  # Может удалять станцию из списка
  # Может выводить список всех станций по-порядку от начальной до конечной
  attr_reader :route

    def initialize
      @route = Array.new
    end

    def add_station station
      @route << station
    end

    def delete_station index_station
      @route.delete_at (index_station)
    end

    def show_list
      count = 0
      @route.each { |item| puts "#{count += 1} -- #{item}" }
    end
  end
