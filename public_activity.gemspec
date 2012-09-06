# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'public_activity/version'

Gem::Specification.new do |s|
  s.name = 'public_activity'
  s.version = PublicActivity::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Piotrek Okoński", "Kuba Okoński"]
  s.email = "piotrek@okonski.org"
  s.homepage = 'https://github.com/pokonski/public_activity'
  s.summary = "Smooth activity tracking for ActiveRecord models"
  s.description = "Smooth activity tracking for your ActiveRecord models. Provides ModelActivity model with details about actions performed by your users, like adding comments, responding etc."

  s.files = `git ls-files lib`.split("\n") + ['Gemfile','Rakefile','README.md', 'MIT-LICENSE']
  s.test_files = `git ls-files spec`.split("\n")
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.8.7'

  s.add_dependency 'activerecord', '>= 3.0.0'
  s.add_dependency 'activesupport', '>= 3.0.0'
  s.add_dependency 'actionpack', '>= 3.0.0'
  s.add_dependency 'i18n', '>= 0.5.0'

  if RUBY_VERSION == "1.8.7"
    s.add_development_dependency 'minitest', '>= 3.2.0'
  else
    s.add_development_dependency 'simplecov', '>= 0.6.4'
  end

  s.add_development_dependency 'bundler', '>= 1.1'
  s.add_development_dependency 'rake', '>= 0.9'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'mocha', '>= 0.12.1'
  s.add_development_dependency 'rails', '>= 3.0.0' # generators test
end
