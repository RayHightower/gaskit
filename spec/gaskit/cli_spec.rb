require 'spec_helper'
require 'gaskit/cli'

describe Gaskit::CLI do
  let(:argv) { [] }
  subject { Gaskit::CLI.new(argv) }

  describe 'path' do
    it 'uses pwd' do
      subject.path.should == Dir.pwd
    end

    it 'uses -g option' do
      argv.concat ['-g', '/tmp']
      subject.path.should == '/tmp'
    end
  end

  describe 'run' do
    it 'starts rack server' do
      Rack::Server.should_receive(:start)
      subject.run
    end
  end
end