module Hoe::Gemspec2
  VERSION = '1.2.0'

  def define_gemspec2_tasks
    gemspec = spec.name + '.gemspec'

    with_config do |config, _|
      unless config["exclude"] =~ '.gemspec'
        warn "WARNING You should add .gemspec to your .hoerc exclude list"
      end
    end

    file gemspec => %w[clobber Manifest.txt] + spec.files do
      open(gemspec, 'w') { |f|
        spec2 = YAML.load(YAML.dump(spec))

        unless @include_all
          [ :signing_key, :cert_chain ].each { |name|
            spec2.send("#{name}=".to_sym, spec2.default_value(name))
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
        Rake::Task['gemspec'].invoke
      end
    end

    task :default => gemspec
  end
end
