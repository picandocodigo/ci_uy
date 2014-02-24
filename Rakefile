require 'rake/testtask'

Rake::TestTask.new("test") do |t|
  t.pattern = "test/**/*_test.rb"
end

task :console do
  require 'irb'
  require 'irb/completion'
  require 'ci_uy'
  ARGV.clear
  IRB.start
end
