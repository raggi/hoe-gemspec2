module Hoe::Gemspec2
  VERSION = '1.1.0'

  def define_gemspec2_tasks
    gemspec = spec.name + '.gemspec'

    with_config do |config, _|
      unless config["exclude"] =~ '.gemspec'
        warn "WARNING You should add .gemspec to your .hoerc exclude list"
      end
    end

    file gemspec => %w[clobber Manifest.txt] + spec.files do
      open(gemspec, 'w') { |f| f.write(spec.to_ruby) }
    end

    desc "Regenerate #{gemspec}"
    task :gemspec => gemspec

    task :default => gemspec
  end
end