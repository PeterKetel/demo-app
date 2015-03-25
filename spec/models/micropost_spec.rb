require 'spec_helper'

describe Micropost do
  subject { described_class }
  it 'There are no microposts' do
    expect(subject.all.count).to eql(0)
  end

  it '#create a new micropost if there is not a user who owns the micropost' do
    expect(subject.create.id).to be_nil
  end

  it '#create a new micropost' do
    expect(create :micropost).not_to be_nil
  end

  it '#drop a micropost' do
    mp = create :micropost
    user =  mp.user

    user.destroy
    expect(User.all.count).to eql(0)
    expect(subject.all.count).to eql(0)
  end
end
