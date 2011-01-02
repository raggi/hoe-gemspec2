# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hoe-gemspec}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["raggi"]
  s.cert_chain = ["/Users/raggi/.gem/gem-public_cert.pem"]
  s.date = %q{2011-01-02}
  s.description = %q{Adds support for generation of gemspec files to Hoe.}
  s.email = ["raggi@rubyforge.org"]
  s.extra_rdoc_files = ["Manifest.txt", "CHANGELOG.rdoc", "README.rdoc"]
  s.files = [".autotest", "CHANGELOG.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "lib/hoe/gemspec.rb"]
  s.homepage = %q{{Project}[http://rubygems.org/gems/hoe-gemspec]}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{libraggi}
  s.rubygems_version = %q{1.4.1}
  s.signing_key = %q{/Users/raggi/.gem/gem-private_key.pem}
  s.summary = %q{Adds support for generation of gemspec files to Hoe.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hoe>, [">= 0"])
      s.add_development_dependency(%q<hoe-doofus>, [">= 1.0"])
      s.add_development_dependency(%q<hoe-seattlerb>, [">= 1.2"])
      s.add_development_dependency(%q<hoe-git>, [">= 1.3"])
      s.add_development_dependency(%q<hoe-gemspec>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 2.8.0"])
    else
      s.add_dependency(%q<hoe>, [">= 0"])
      s.add_dependency(%q<hoe-doofus>, [">= 1.0"])
      s.add_dependency(%q<hoe-seattlerb>, [">= 1.2"])
      s.add_dependency(%q<hoe-git>, [">= 1.3"])
      s.add_dependency(%q<hoe-gemspec>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 2.8.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 0"])
    s.add_dependency(%q<hoe-doofus>, [">= 1.0"])
    s.add_dependency(%q<hoe-seattlerb>, [">= 1.2"])
    s.add_dependency(%q<hoe-git>, [">= 1.3"])
    s.add_dependency(%q<hoe-gemspec>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 2.8.0"])
  end
end
