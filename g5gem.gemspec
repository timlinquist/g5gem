# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "g5gem/version"

Gem::Specification.new do |s|
  s.name        = "g5gem"
  s.version     = G5gem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark Turner"]
  s.email       = ["mark@amerine.net"]
  s.homepage    = ""
  s.summary     = "An easy way to install/update gems on the g5platform"
  s.description = "An easy way to install/update gems on the g5platform"

  s.rubyforge_project = "g5gem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('thor', '0.14.6')
end
