require 'sinatra'
require 'haml'
require 'fileutils'
require 'faker'
require File.dirname(__FILE__) + '/mars_mixins'

%w{ helpers images css js }.each do |lib|
  require File.dirname(__FILE__) + '/mars/' + lib
end

require 'coffee_script'
require 'sass/plugin/rack'


# Core Sinatra application to run mercury apps
class Mars::App < Sinatra::Application
  use Sass::Plugin::Rack

  include Mars::Mixins

  helpers Sinatra::Mars::Helpers
  register Sinatra::Mars::Images
  register Sinatra::Mars::Css
  register Sinatra::Mars::Js
  
    
  set :root,  FileUtils.pwd.gsub("\n",'')
  set :public, FileUtils.pwd.gsub("\n",'') + '/wwwroot'
  set :views, FileUtils.pwd.gsub("\n",'') + '/wwwroot'
  
  
  get '/*' do
    view_file_request = params["splat"][0]  
    # haml view_file_request.empty? ? view_file = get_view('index.haml') : view_file_request.to_sym, :layout => get_view('layout.haml')
    erb view_file_request.empty? ? view_file = get_view('index.erb') : view_file_request.to_sym, :layout => get_view('layout.erb')
  end

  
private  
  
  # finds and opens view  
  def get_view(filename)
    full_file = File.join(options.views, filename)
    if File.exists?(full_file)
      view_file = full_file 
    else
      view_directory = File.join(File.dirname(__FILE__),'views')
      view_file = File.join(view_directory,filename)
    end
    open(view_file,'r') { |file| file.read }
  end  
end
