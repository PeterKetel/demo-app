FactoryGirl.define do
  factory :micropost do
    user {User.create}
  end
end
