require_relative 'wagon'
require_relative 'company_name'
require_relative 'instance_counter'

# class for CargoWagon
class CargoWagon < Wagon
  attr_reader :type

  def initialize
    super
    @type = 'Cargo'
  end
end
