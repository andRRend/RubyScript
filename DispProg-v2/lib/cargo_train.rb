require_relative 'train'
require_relative 'company_name'
require_relative 'railway_station'

# class for CargoTrain
class CargoTrain < Train
  def initialize(number)
    super
    @type = 'Cargo'
  end

  def get_wagon(wagon)
    if wagon.type == 'Cargo'
      @wagons << wagon
    else
      raise ('Oh, no! Error get wagon cargo method')
    end
  end
end
