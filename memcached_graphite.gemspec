# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "memcached_graphite/version"

Gem::Specification.new do |s|
  s.name        = "memcached_graphite"
  s.version     = MemcachedGraphite::VERSION
  s.authors     = ["Aaron Brown"]
  s.email       = ["abrown@ideeli.com"]
  s.homepage    = "https://github.com/ideeli/memcached_graphite"
  s.summary     = %q{Send memcached statistics to graphite/carbon}
  s.description = %q{Send memcached statistics to graphite/carbon}

  s.rubyforge_project = "memcached_graphite"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "dalli"
  s.add_runtime_dependency "graphite"
  s.rubygems_version = '1.3.5'
end
