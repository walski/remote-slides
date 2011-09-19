# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "remote-slides/version"

Gem::Specification.new do |s|
  s.name        = "remote-slides"
  s.version     = RemoteSlides::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thorben Schröder"]
  s.email       = ["stillepost@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Create a very simple web site to show slides remotely}
  s.description = %q{remote-slides allows you to create a simple web site from a series of images which are then shown as slides of a presentation. In command mode you can go back and forth through the slides and all remote clients will sync to that.}

  s.rubyforge_project = "remote-slides"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
