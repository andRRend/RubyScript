require_relative 'RailwayStation'

module InstanceCounter

  def instances

  end

  def register_instance
    @@instance_count += 1
  end

end