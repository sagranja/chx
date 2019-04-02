FactoryBot.define do

  factory :game do
    add_attribute( :name) { 'New Game' }
    
    # association :user
  end
end
