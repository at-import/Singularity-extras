# -*- encoding: utf-8 -*-
require './lib/singularity-extras'

Gem::Specification.new do |s|
  # General Project Information
  s.name = "singularity-extras"
  s.version = SingularityExtras::VERSION
  s.date = SingularityExtras::DATE
  s.rubyforge_project = "singularity-extras"
  s.rubygems_version = "1.7.2"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2")

  # Author Information
  s.authors = ["Scott Kellum", "Sam Richard"]
  s.email = ["scott@scottkellum.com", "snugug@gmail.com"]
  s.homepage = "http://singularity.gs"

  # Project Description
  s.description = "Advanced responsive grid system for Sass and Compass"
  s.summary = "Singularity is a fluid grid system that can generate uniform columns as well as asymmetric and compound grids with tools to write grids as functions, mixins, or class based objects."

  # Files to Include
  s.files = Dir.glob("lib/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Dependent Gems
  s.add_dependency 'singularitygs',       ">= 0.0.1"
  s.add_dependency 'sassy-math',          ">= 1.5"
  s.add_dependency 'modular-scale',       ">= 1.0.6"
end