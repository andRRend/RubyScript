
  class Train
    def initialize
      @current_station = 1
      @speed = 0
      check!
    end
    def move target
      @target = target
    end
    def gain speed
      @speed = speed
    end
    def reduce speed
      @speed = speed
    end
    def validator?
      if (@speed > 0 && @speed <= 110 )
        return true
      else return false
      end
    end
  end

train = Train.new
p train.validator?