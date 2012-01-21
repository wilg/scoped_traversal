# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "scoped_traversal/version"

Gem::Specification.new do |s|
  s.name        = "scoped_traversal"
  s.version     = ScopedTraversal::VERSION
  s.authors     = ["Wil Gieseler"]
  s.email       = ["supapuerco@gmail.com"]
  s.homepage    = "https://github.com/supapuerco/scoped_traversal"
  s.summary     = %q{A simple way to traverse ActiveRecord models by an ordered column.}
  s.description = %q{A simple way to traverse ActiveRecord models by an ordered column.}

  s.rubyforge_project = "scoped_traversal"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  # s.add_development_dependency "with_model"
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
