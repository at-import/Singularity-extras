require 'compass'
require 'singularitygs'
require 'modular-scale'
require 'sassy-math'

Compass::Frameworks.register("singularity-extras", :path => "#{File.dirname(__FILE__)}/..")

module SingularityExtras
  VERSION = "1.0.0.alpha.1"
  DATE = "2013-01-17"
end