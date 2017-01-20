# -*- encoding: utf-8 -*-
# frozen_string_literal: true

# allows bundler to use the gemspec for dependencies
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bitfinex_trading_bot/version'

Gem::Specification.new do |s|
  s.name        = 'bitfinex_trading_bot'
  s.version     = BitfinexTradingBot::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.authors     = ['L. Preston Sego III']
  s.email       = 'LPSego3+dev@gmail.com'
  s.homepage    = 'https://github.com/NullVoxPopuli/bitfinex_trading_bot'
  s.summary     = "BitfinexTradingBot-#{BitfinexTradingBot::VERSION}"
  s.description = "A ruby trading bot for trading on bitfinex"

  s.files        = Dir['CHANGELOG.md', 'LICENSE' 'MIT-LICENSE', 'README.md', 'lib/**/*']
  s.require_path = 'lib'

  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.required_ruby_version     = '>= 2.3.3'

  s.add_runtime_dependency 'bitfinex-rb'
  s.add_runtime_dependency 'activesupport',        '>= 5.0.0.beta4'
  s.add_runtime_dependency 'em-websocket-client',  '>= 0.1.2'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'rubocop'
end
