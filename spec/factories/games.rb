FactoryBot.define do
  factory :game do
    add_attribute( :name) { 'New Game' }
    add_attribute( :white_player) { 1 }
    add_attribute( :black_player) { 2 }
    add_attribute( :active) { true }
  end
end
