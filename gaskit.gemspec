# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gaskit/version"

Gem::Specification.new do |s|
  s.name        = "gaskit"
  s.version     = Gaskit::VERSION
  s.authors     = ["Brandon Keepers"]
  s.email       = ["brandon@opensoul.org"]
  s.homepage    = ""
  s.summary     = %q{}
  s.description = %q{}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'sinatra'
  s.add_dependency 'adapter-git'
  s.add_dependency 'toystore'
  s.add_dependency 'sprockets', '~> 2.0.0.beta.15'
  s.add_dependency 'sass'
end
