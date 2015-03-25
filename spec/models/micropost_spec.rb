require 'spec_helper'

describe Micropost do
  subject { described_class }
  it 'There are no microposts' do
    expect(subject.all.count).to eql(0)
  end
end
