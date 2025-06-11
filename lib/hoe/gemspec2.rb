module Hoe::Gemspec2
  VERSION = "1.4.0"

  def define_gemspec2_tasks
    gemspec = spec.name + ".gemspec"

    with_config do |config, _|
      unless ".gemspec".match?(config["exclude"])
        warn "WARNING You should add .gemspec to your .hoerc exclude list"
      end
    end

    file gemspec => %w[clobber Manifest.txt] + spec.files do
      open(gemspec, "w") { |f|
        permitted_classes = [
          Symbol, Time, Date, Gem::Dependency, Gem::Platform, Gem::Requirement,
          Gem::Specification, Gem::Version, Gem::Version::Requirement
        ]

        permitted_symbols = %i[development runtime]
        spec2 = begin
          YAML.safe_load(
            YAML.safe_dump(
              spec,
              :permitted_classes => permitted_classes,
              :permitted_symbols => permitted_symbols,
              :aliases => true
            ),
            :permitted_classes => permitted_classes,
            :permitted_symbols => permitted_symbols,
            :aliases => true
          )
        rescue
          YAML.safe_load(
            YAML.dump(spec), permitted_classes, permitted_symbols, true
          )
        end

        # - Point the first: in service of reproducible builds, the RubyGems team made
        #   a change that breaks hoe releases using this gemspec.
        # - Point the second: the date field is going to be deprecated. We clear it if
        #   the date is settable. This should make this at least partially forwards-
        #   compatible.
        spec2.date = nil if spec2.respond_to?(:date=)

        unless @include_all
          [:signing_key, :cert_chain].each { |name|
            spec2.send(:"#{name}=", spec2.default_value(name))
          }
        end
        f.write(spec2.to_ruby)
      }
    end

    desc "Regenerate #{gemspec} excluding signing keys"
    task :gemspec => gemspec

    namespace :gemspec do
      desc "Regenerate #{gemspec} with all keys"
      task :full do
        @include_all = true
        Rake::Task["gemspec"].invoke
      end
    end

    task :default => gemspec
  end
end
