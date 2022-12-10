# frozen_string_literal: true

require_relative './lib/eve/esi/version'

Gem::Specification.new do |spec|
  spec.name = 'eve-esi'
  spec.version = EVE::ESI::VERSION
  spec.authors = 'Bokobo Shahni'
  spec.email = 'shahni@bokobo.space'

  spec.summary = 'API client for the EVE Swagger Interface (ESI)'
  spec.description = 'eve-esi is a full-featured API client for the EVE Swagger Interface (ESI), the API for EVE ' \
                     'Online.'
  spec.homepage = 'https://bokoboshahni.github.io/eve-esi'
  spec.license = 'MIT'

  spec.required_ruby_version = '~> 3.1'
  spec.required_rubygems_version = '>= 3.3.0'

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'bug_tracker_uri' => 'https://github.com/bokoboshahni/eve-esi/issues',
    'changelog_uri' => 'https://github.com/bokoboshahni/eve-esi/blob/main/CHANGELOG.md',
    'documentation_uri' => "https://bokoboshahni.github.io/eve-esi/v#{EVE::ESI::VERSION}",
    'mailing_list_uri' => 'https://github.com/bokoboshahni/eve-esi/discussions',
    'source_code_uri' => 'https://github.com/bokoboshahni/eve-esi',

    'rubygems_mfa_required' => 'true'
  }

  spec.add_dependency 'dry-configurable', '~> 1.0'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|spec)/|\.(?:git|github))})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
