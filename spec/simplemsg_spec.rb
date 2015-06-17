require 'spec_helper'

describe Simplemsg::Msg do
  #it 'has a version number' do
  #  expect(Simplemsg::VERSION).not_to be nil
  #end

  subject = Simplemsg::Msg.new

  describe '#process' do
    let(:input) { 'Today is a Good Friday' }
    let(:output) { subject.process(input) }

    it 'converts to lowercase' do
      expect(output.downcase).to eq output
    end

  end

  describe '#hello' do
    pending
  end

  describe '#welcome' do
    it 'Display welcome message' do
      expect(Simplemsg::Msg.new.welcome).to be ==("Welcome to Simple message")
    end
  end

end
