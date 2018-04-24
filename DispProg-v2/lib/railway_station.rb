require_relative 'train'
require_relative 'instance_counter'

# class of Station
class RailwayStation
  include InstanceCounter

  @@list_station = []

  attr_reader :name, :train_list

  def initialize(station_name)
    @name = station_name
    valid?(self)
    register_instance(self)
    @name = station_name
    @train_list = []
    @@list_station << self
  end

  def receive_train(train)
    @train_list << train
  end

  def send_train(train)
    @train_list.delete(train)
  end

  def train_type_list
    @train_list.each { |train| p train.type }
  end

  def self.all
    @@list_station.each { |a| p a.name }
  end

  def dispach_mark(obj, dispach, &block)
    regexp_mark = /^([\w]){3,15}$/=~dispach
    if regexp_mark.zero? && obj.train_list.any?
      yield(obj, dispach)
    else
      raise('Oh, no! Error dispacher mark method')
    end
  end

private

  def valid?(station)
    @regexp = /^([\w]){3,15}$/=~(station.name)
    if station.class.class == Class && @regexp.zero?
      true
    else
      raise('Oh, no! Error validate station')
    end
  end
end
