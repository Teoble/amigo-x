FactoryGirl.define do
  factory :user_mail_valid, class: "User" do
    name "user valid"
    email "email@email.com"
  end

  factory :user_mail_not_valid, class: "User" do
    name "user invalid"
    email "email"
  end
end
