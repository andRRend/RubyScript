require_relative 'lib/railway_station'
require_relative 'lib/train'
require_relative 'lib/route'
require_relative 'lib/wagon'
require_relative 'lib/cargo_train'
require_relative 'lib/cargo_wagon'
require_relative 'lib/passanger_train'
require_relative 'lib/passanger_wagon'
require_relative 'lib/railway_station'
require_relative 'lib/company_name'

# loop do
#   p "station - new station, train - new train, wagon - new wagon"
#   var = gets
#   break if var == "exit\n"
#
# end

@wagon1 = PassangerWagon.new
@wagon1.company('wagon_company')
@wagon2 = PassangerWagon.new
@wagon2.company('wagon_company')
@wagon3 = PassangerWagon.new
@wagon3.company('wagon_company')

@station1 = RailwayStation.new('stv')
@station2 = RailwayStation.new('nvnm')
@station3 = RailwayStation.new('ptg')

@route = Route.new(@station1, @station2)
@route.add_station(@station3)

@train = PassangerTrain.new('qwe-12')
@train2 = PassangerTrain.new('qwe-13')
@train.company('train_company')
@train.route = @route
@train.to_station(@station1)
@train.to_station(@station2)
@train2.route = @route
@train2.to_station(@station2)

@train.get_wagon(@wagon1)
block_wagon = lambda { |train, wagon| wagon.instance_variable_set(:@train_num, train.number) }
@train.wagon_mark(@train, &block_wagon)

block = lambda { |obj, dispach| obj.train_list.each { |train| train.instance_variable_set(:@dispacher, dispach) } }
@station1.dispach_mark(@station1, 'andrew', &block)
