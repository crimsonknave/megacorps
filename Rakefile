require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'cane/rake_task'

RuboCop::RakeTask.new

RSpec::Core::RakeTask.new('spec') do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = '--tag ~broken --order rand'
end

def find_typos
  files = `grep -Ril crop *`.split("\n")
  files = files.reject! { |x| x == 'Rakefile' || x =~ /\..*\.swp/ || x =~ /tmp.*/ }
  files.map(&:strip)
end

task :typos do
  files = find_typos
  fail "WHY U NO SPELL?\n#{files}" unless files.empty?
end

Cane::RakeTask.new(:cane) do |cane|
  cane.canefile = '.cane'
end

task default: [:typos, :spec, :cane, :rubocop]
