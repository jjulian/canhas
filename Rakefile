require 'rake'

task :default => :spec

begin
  require 'spec/rake/spectask'

  desc "Run all examples"
  Spec::Rake::SpecTask.new('spec') do |t|
    t.spec_files = FileList['spec/**/*.rb']
  end

  desc "Run all examples with RCov"
  Spec::Rake::SpecTask.new('spec:rcov') do |t|
    t.spec_files = FileList['spec/**/*.rb']
    t.rcov = true
    t.rcov_opts = ['--exclude', 'spec,gem']
  end
rescue LoadError
  puts "Could not load Rspec. To run tests, use `gem install rspec`"
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "canhas"
    gemspec.summary = "Object can_has?(:can_has?) #=> true"
    gemspec.description = %{
      Object can_has?(:can_has?) #=> true
    }
    gemspec.email = "flip@x451.com"
    gemspec.homepage = "http://github.com/flipsasser/canhas"
    gemspec.authors = ["Flip Sasser"]
  end
rescue LoadError
end
