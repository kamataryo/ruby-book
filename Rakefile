
namespace :my_tasks do
  desc 'hello world task'
  task :hello_world do
    puts 'Hello, world!'
  end
end

task :default => "my_tasks:hello_world"

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.pattern = './lib/*test.rb'
end
