$: << File.expand_path('../lib', __FILE__)

require 'rubygems'
require 'gaskit/app'

Gaskit.repo ||= Grit::Repo.new(Gaskit.root.to_s)

map '/assets' do
  run Gaskit::App.sprockets
end

map '/' do
  run Gaskit::App
end
