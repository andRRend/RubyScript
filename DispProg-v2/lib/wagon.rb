require_relative 'company_name'
require_relative 'instance_counter'

class Wagon
  include InstanceCounter
  include CompanyName

  attr_reader :type

  def initialize
    @type = 'Wagon'
  end

  def company(name)
    register_instance self
    set_name(self, name)
  end

end
