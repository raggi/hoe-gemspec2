# -*- encoding: utf-8 -*-
# stub: hoe-gemspec2 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "hoe-gemspec2".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "http://rubygems.org/gems/hoe-gemspec2" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["raggi".freeze]
  s.date = "2022-03-26"
  s.description = "Adds support for generation of gemspec files to Hoe. By default, excludes the\nsigning key and certificate chain. Use <tt>rake gemspec:full</tt> to include\nthe signing key and certificate chain.".freeze
  s.email = ["raggi@rubyforge.org".freeze]
  s.extra_rdoc_files = ["CHANGELOG.rdoc".freeze, "Manifest.txt".freeze, "README.rdoc".freeze]
  s.files = ["CHANGELOG.rdoc".freeze, "Manifest.txt".freeze, "README.rdoc".freeze, "Rakefile".freeze, "lib/hoe/gemspec2.rb".freeze]
  s.homepage = "http://rubygems.org/gems/hoe-gemspec2".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.rdoc".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Adds support for generation of gemspec files to Hoe".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<hoe>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.15"])
    s.add_development_dependency(%q<hoe-doofus>.freeze, [">= 1.0"])
    s.add_development_dependency(%q<hoe-seattlerb>.freeze, [">= 1.2"])
    s.add_development_dependency(%q<hoe-git>.freeze, [">= 1.3"])
    s.add_development_dependency(%q<hoe-gemspec2>.freeze, [">= 0"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
  else
    s.add_dependency(%q<hoe>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.15"])
    s.add_dependency(%q<hoe-doofus>.freeze, [">= 1.0"])
    s.add_dependency(%q<hoe-seattlerb>.freeze, [">= 1.2"])
    s.add_dependency(%q<hoe-git>.freeze, [">= 1.3"])
    s.add_dependency(%q<hoe-gemspec2>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
  end
end
