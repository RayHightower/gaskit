ENV['RACK_ENV'] = 'test'

require 'bundler'
Bundler.require 'test'
require 'gaskit'
require 'factories'

Gaskit.repo = Grit::Repo.init(Gaskit.root.join('testrepo').to_s)

RSpec.configure do |config|
  config.include Factory::Syntax::Methods

  config.before do
    Gaskit.repo.git.fs_delete("refs/heads/gaskit")
  end
end

include Gaskit # so we don't have to namespace EVERYTHING