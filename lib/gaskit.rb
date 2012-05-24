module Gaskit
  class << self

    def root
      @root ||= Pathname(File.expand_path('../..', __FILE__))
    end

    def env
      @env ||= ActiveSupport::StringInquirer.new(ENV['RACK_ENV'] || 'development')
    end

    attr_accessor :repo

    # def repo
    #   @repo ||= env.test? ?  :
    # end
  end
end

require 'adapter-git'
require 'toystore'
require 'gaskit/version'
require 'gaskit/toystore/lazy_adapter'
require 'gaskit/story'
require 'gaskit/user'
