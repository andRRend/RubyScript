require_relative 'instance_counter'

# class for Route
class Route
  include InstanceCounter

  attr_reader :route

  def initialize(first_station, last_station)
    valid?(first_station, last_station)
    register_instance(self)
    @route = []
    @route << first_station
    @route << last_station
  end

  def add_station(station)
    @route << station
  end

  def delete_station(station)
    @route.each { |st| st.delete(station) }
  end

  def station_list
    @route.each { |st| p st }
  end

private

  def valid?(first, last)
    first.name && last.name ? true : raise
  end
end
