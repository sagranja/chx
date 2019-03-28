FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end

    add_attribute(:password) { 'secretPassword' }
    add_attribute(:password_confirmation) { 'secretPassword' }
  end

  factory :game do
    add_attribute( :name) { 'New Game' }
    add_attribute( :white_player) { 1 }
    add_attribute( :white_player) { 2 }
    
    association :user
  end
end
