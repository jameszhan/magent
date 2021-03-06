# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "magent"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David A. Cuadrado"]
  s.date = "2012-05-27"
  s.description = "Simple job queue system based on mongodb"
  s.email = "krawek@gmail.com"
  s.executables = ["magent", "magent-web"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "History.txt",
    "LICENSE",
    "Manifest.txt",
    "PostInstall.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/magent",
    "bin/magent-web",
    "config.ru",
    "examples/findable.rb",
    "examples/retries.rb",
    "examples/test_mode.rb",
    "lib/magent.rb",
    "lib/magent/async.rb",
    "lib/magent/async_channel.rb",
    "lib/magent/encoder.rb",
    "lib/magent/failure.rb",
    "lib/magent/generic_channel.rb",
    "lib/magent/processor.rb",
    "lib/magent/railtie.rb",
    "lib/magent/stats.rb",
    "lib/magent/tasks.rb",
    "lib/magent/utils.rb",
    "lib/magent_web.rb",
    "lib/magent_web/app.rb",
    "lib/magent_web/mongo_helper.rb",
    "lib/magent_web/views/index.haml",
    "lib/magent_web/views/layout.haml",
    "lib/magent_web/views/queues/failed.haml",
    "lib/magent_web/views/queues/show.haml",
    "lib/magent_web/views/queues/stats.haml",
    "lib/magent_web/views/shared/values.haml",
    "lib/magent_web/views/status.haml",
    "magent.gemspec",
    "public/javascripts/jquery.mobile-1.0b1pre.min.js",
    "public/javascripts/magent_web.js",
    "public/stylesheets/highlight.css",
    "public/stylesheets/images/ajax-loader.png",
    "public/stylesheets/images/icon-search-black.png",
    "public/stylesheets/images/icons-18-black.png",
    "public/stylesheets/images/icons-18-white.png",
    "public/stylesheets/images/icons-36-black.png",
    "public/stylesheets/images/icons-36-white.png",
    "public/stylesheets/jquery.mobile-1.0b1pre.min.css",
    "script/console",
    "spec/magent_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/agent.rb",
    "spec/support/encodable/custom.rb",
    "spec/support/encodable/custom_array.rb",
    "spec/support/encodable/model.rb"
  ]
  s.homepage = "http://github.com/dcu/magent"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Simple job queue system based on mongodb"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo>, [">= 0"])
      s.add_runtime_dependency(%q<bson_ext>, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 0"])
      s.add_runtime_dependency(%q<em-websocket>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<mongo>, [">= 0"])
      s.add_dependency(%q<bson_ext>, [">= 0"])
      s.add_dependency(%q<uuidtools>, [">= 0"])
      s.add_dependency(%q<em-websocket>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<mongo>, [">= 0"])
    s.add_dependency(%q<bson_ext>, [">= 0"])
    s.add_dependency(%q<uuidtools>, [">= 0"])
    s.add_dependency(%q<em-websocket>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end

