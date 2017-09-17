require_relative 'Train'
require_relative 'Company'

  class Wagon
    attr_reader :type

    # include Company
    # include InstanceCounter

    @@instance_count = 0

    def self.instances
      @@instance_count
    end

    # UInterfaces

    def initialize type,numer=rand(0..9)
      register_instance
      if type == "Passanger" || type == "Cargo"
        @type = type
        puts "Создан вагон с номером: #{numer} тип: #{type}"
      else
        puts "Вагон не создан: Неизвестный тип"
      end
    end

    def register_instance
      @@instance_count += 1
    end

  end