class MarsConfig
  attr_accessor :project, :stack

  def initialize(args)
    @project = args.first
    # @stack = JQUERY
    # if args.first and args.first.split(':')[0] == "stack"
    #   @project = args.last
    #   @stack = args.first.split(':')[1] == SENCHA ? SENCHA : JQUERY
    # end
  end
  
  def create_project
    # Build Directory and add setup files
    FileUtils.mkdir_p @project
    FileUtils.mkdir_p File.join(@project, 'wwwroot')
    FileUtils.mkdir_p File.join(@project, 'tmp')

    config_ru = ["require 'mars'","log = File.new('tmp/mars.log', 'a+')", "$stdout.reopen(log)", "$stderr.reopen(log)", "run Mars::App"].join("\n")
    File.open(File.join(@project, 'config.ru'),'w').write(config_ru)
    gemfile = ['source :gemcutter', "gem 'thin'", "gem 'mars'"].join("\n")
    File.open(File.join(@project, 'Gemfile'),'w').write(gemfile)
  end
  
  def apply_stack
    # Eventually adding stacks
    # if @stack == SENCHA
    #   FileUtils.cp_r File.dirname(__FILE__) + '/../lib/sencha/.', FileUtils.pwd + "/#{@project}/wwwroot"
    # elsif @stack == BLANK
    #   # dont do anything
    # else 
    #   FileUtils.cp_r File.dirname(__FILE__) + '/../lib/public/.', FileUtils.pwd + "/#{@project}/wwwroot"
    # end
    FileUtils.cp_r File.dirname(__FILE__) + '/../lib/public/.', FileUtils.pwd + "/#{@project}/wwwroot"
  end
  
end
