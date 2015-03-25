require 'spec_helper'

describe Micropost do
  subject { described_class }
  it 'There are no microposts' do
    expect(subject.all.count).to eql(0)
  end

  it '#create a new micropost' do
    expect(subject.create.id).to be_nil
  end

  #it '#drop a micropost' do
  #  subject drop
  #  expect(subject.all..count).to eql(0) and (subject.all.user) eql (User).user
  #end
end
