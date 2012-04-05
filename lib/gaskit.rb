module Gaskit
  def self.root
    @root ||= Pathname(File.expand_path('../..', __FILE__))
  end

  def self.env
    @env ||= ActiveSupport::StringInquirer.new(ENV['RACK_ENV'] || 'development')
  end

  def self.repo
    @repo ||= env.test? ? Grit::Repo.init(root.join('testrepo').to_s) : Grit::Repo.new(root.to_s)
  end
end

require 'adapter-git'
require 'toystore'
require 'gaskit/version'
require 'gaskit/story'
require 'gaskit/user'
