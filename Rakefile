require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "mars"
    gem.summary = %Q{Microframework built on top of Sinatra}
    gem.description = %Q{Disclaimer: this is build for pleasure it is not meant to replace any of the high quality webframeworks like Sinatra and Rails....}
    gem.email = "mars@jackhq.com"
    gem.homepage = "http://github.com/jackhq/mars"
    gem.authors = ["Tom Wilson"]
    gem.add_dependency "sinatra", ">= 1.0.0"
    gem.add_dependency "faker", ">= 0"
    gem.add_dependency "maruku", ">= 0"
    
    gem.files = FileList['lib/**/*']
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
