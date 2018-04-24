require_relative 'company_name'
require_relative 'railway_station'
require_relative 'instance_counter'

# class for Train
class Train
  include CompanyName
  include InstanceCounter

  @@train_list = []

  attr_reader :wagons, :number
  attr_accessor :speed, :route

  def initialize(number)
    valid?(number)
    @number = number
    @speed = 0
    @route = nil
    @current_station = 0
    @wagons = []
    @@train_list << self
    register_instance(self)
  end

  def to_station(station)
    if @route.route.include?(station)
      @current_station = station
      station.receive_train(self)
    else
      raise('Oh, no! Error to station method')
    end
  end

  def train_route
    cs = @route.route.index(@current_station)
    p "prev #{@route.route[cs - 1].name}" if cs != 0
    p "current #{@route.route[cs].name}"
    p "next #{@route.route[cs + 1].name}" if @route.route[cs + 1].nil?
  end

  def delete_wagon(wagon)
    if @wagons.include?(wagon)
      @wagons.delete(wagon)
    else
      raise('Oh, no! Error delete_wagon method')
    end
  end

  def self.find(number)
    @@train_list.each do |a|
      if a.number.include?(number.to_s)
        p a
      else
        raise('Oh, no! Error find class method')
      end
    end
  end

  def company(name)
    set_name(self, name)
  end

  def wagon_mark(train, &block)
    train.wagons.each { |wagon| yield(train, wagon) }
  end

private

  def valid?(number)
    regexp = /^([\w]){3}(-?)([\w]){2}$/=~(number)
    raise('No valid number') if regexp != 0
    if @@train_list.any?
      @@train_list.each do |train|
        if train.number == number
          raise('Repeat number')
        end
      end
    end
    true
  end
end
