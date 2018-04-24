require_relative 'train'
require_relative 'company_name'
require_relative 'instance_counter'

# class for PassagerTrain
class PassangerTrain < Train
  def initialize(number)
    super
    @type = 'Passanger'
  end

  def get_wagon(wagon)
    if wagon.type == 'Passanger'
      @wagons << wagon
    else
      raise 'Oh, no! Error get wagon passanger method'
    end
  end
end
