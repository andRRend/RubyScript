# module for company name
module CompanyName
  def set_name(object, name)
    object.instance_variable_set(:@company_name, name)
  end

  def get_name(object)
    object.instance_variable_get(:@company_name)
  end
end
