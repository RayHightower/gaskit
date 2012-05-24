require 'optparse'
require 'ostruct'
require 'rack'
require 'gaskit'

module Gaskit
  class CLI
    def initialize(args = ARGV)
      @options = OpenStruct.new({
        :path => Dir.pwd
      })

      @parser = OptionParser.new do |opts|
        opts.on("-g", "--git [PATH]", "PATH to git repo") do |path|
          @options.path = path
        end
      end.parse!(args)
    end

    def path
      @options.path
    end

    def run
      Gaskit.repo = Grit::Repo.new(path)
      Rack::Server.start(:config => Gaskit.root.join('config.ru').to_s)
    end
  end
end