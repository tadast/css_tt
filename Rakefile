require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

# PKG_FILES = FileList[
#   '[a-zA-Z]*',
#   'generators/**/*',
#   'lib/**/*',
#   'rails/**/*',
#   'tasks/**/*',
#   'test/**/*'
# ]

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the css_tt plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the css_tt plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'CssTt'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
