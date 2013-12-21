# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name                      = "rocket_pants-core"
  s.version                   = "2.0.0.pre.3"
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = ["Darcy Laycock"]
  s.email                     = ["sutto@sutto.net"]
  s.homepage                  = "http://github.com/filtersquad"
  s.summary                   = "Shared utilities for RocketPants - an opionionated set of API tools for Rails"
  s.description               = "RocketPants core provides functionality for RocketPants shared between different "
  s.required_rubygems_version = ">= 1.3.6"
  s.required_ruby_version     = '>= 1.9.3'
  s.files                     = Dir.glob("{lib}/**/*")
  s.require_path              = 'lib'

  # Dependencies
  s.add_dependency 'activesupport', '~> 4.0'
  s.add_development_dependency 'i18n'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rr'
  s.add_development_dependency 'rspec', '~> 2.0'
end