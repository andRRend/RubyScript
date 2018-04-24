module InstanceCounter
  def self.instances(object)
    object.instance_variable_get(:@instance_count)
  end

private

  def register_instance(object)
    object.instance_variable_set(:@instance_count, object.instance_variable_get(:@instance_count) == nil ? 1 : object.instance_variable_get(:@instance_count) + 1 )
  end
end
