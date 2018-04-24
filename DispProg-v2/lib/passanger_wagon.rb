require_relative 'wagon'
require_relative 'company_name'
require_relative 'railway_station'

class PassangerWagon < Wagon
  attr_reader :type

  def initialize
    super
    @type = 'Passanger'
  end
end
