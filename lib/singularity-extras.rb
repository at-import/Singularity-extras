require 'compass'
require 'singularitygs'
require 'modular-scale'

Compass::Frameworks.register("singularity-extras", :path => "#{File.dirname(__FILE__)}/..")

module SingularityExtras
  VERSION = "1.0.0.alpha.2"
  DATE = "2013-02-11"
end