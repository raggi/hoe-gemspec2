module Hoe::Gemspec
  VERSION = '1.0.0'

  def define_gemspec_tasks
    gemspec = spec.name + '.gemspec'

    with_config do |config, _|
      unless config["exclude"] =~ '.gemspec'
        warn "WARNING You should add .gemspec to your .hoerc exclude list"
      end
    end

    file gemspec => spec.files + %w[Manifest.txt] do
      open(gemspec, 'w') { |f| f.write(spec.to_ruby) }
    end

    desc "Regenerate #{gemspec}"
    task :gemspec => gemspec

    task :default => gemspec
  end
end