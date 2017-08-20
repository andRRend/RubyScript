require_relative 'lift/main'
# require '/home/psylone/Dropbox/@doit/@proglive/lessons/3-ruby-stdlib/lift/lib/lift/main'
# require File.expand_path('../lift/main', __FILE__)

module Lift
end

lift = Lift::Main.new

lift.load! 440
lift.move 17
lift.release! 80
lift.move 17
lift.load! 54
lift.move 10
lift.release! 60
lift.move 10
