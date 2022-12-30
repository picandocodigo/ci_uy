# frozen_string_literal: true

require 'rake/testtask'

Rake::TestTask.new('test') do |t|
  t.pattern = 'test/**/*_test.rb'
end

desc 'Run a Ruby console with ci_uy already loaded'
task :console do
  require 'irb'
  require 'irb/completion'
  require 'ci_uy'
  ARGV.clear
  IRB.start
end

task default: 'test'
