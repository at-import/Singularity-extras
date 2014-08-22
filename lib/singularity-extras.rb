base_directory  = File.expand_path(File.join(File.dirname(__FILE__), '..'))
singularityExtras_sass_path = File.join(base_directory, 'stylesheets')

if (defined? Compass)
  require 'breakpoint'
  require 'modular-scale'
  require 'singularity-extras'
  Compass::Frameworks.register(
    "singularity-extras",
    :path => base_directory
  )
else
  ENV["SASS_PATH"] = [ENV["SASS_PATH"], singularityExtras_sass_path].compact.join(File::PATH_SEPARATOR)
end

module SingularityExtras
  VERSION = "1.0.0"
  DATE = "2014-08-21"
end