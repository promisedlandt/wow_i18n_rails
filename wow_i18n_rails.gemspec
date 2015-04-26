# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wow_i18n_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "wow_i18n_rails"
  spec.version       = WowI18nRails::VERSION
  spec.authors       = ["Nils Landt"]
  spec.email         = ["nils@promisedlandt.de"]
  spec.summary       = %q{I18n for World of Warcraft for Ruby on Rails}
  spec.homepage      = "https://www.github.com/promisedlandt/wow_i18n_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "wow_i18n", "~> 1.0"
  spec.add_runtime_dependency "railties", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "i18n-spec", "~> 0.6.0"
end
