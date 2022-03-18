# frozen_string_literal: true

require_relative "lib/jekyll_nth/version"

# rubocop:disable Metrics/BlockLength, Style/StringLiterals
Gem::Specification.new do |spec|
  spec.name = 'jekyll_nth'
  spec.version = Jekyll::VERSION
  spec.authors = ['Mike Slinn']
  spec.email = ['mslinn@mslinn.com']

  spec.summary = 'Provides a Jekyll filter that provides case-insensitive hash key sorting.'
  spec.homepage = 'https://github.com/mslinn/jekyll_nth'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r!\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)!)
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r!\Aexe/!) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'jekyll'
  spec.add_dependency 'jekyll_plugin_logger'

  spec.add_development_dependency 'debase'
  spec.add_development_dependency 'jekyll', '>= 3.5'
  spec.add_development_dependency 'rubocop-jekyll'
  spec.add_development_dependency 'rubocop-rake'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'ruby-debug-ide'
end
# rubocop:enable Metrics/BlockLength, Style/StringLiterals