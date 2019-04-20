FactoryBot.define do

  factory :piece do
    association :game
    add_attribute( :position_x) {0}
    add_attribute( :position_y) {0}
  end

  factory :pawn, parent: :piece do
    add_attribute( :type) {"Pawn"}
    add_attribute( :position_x) {1}
    add_attribute( :position_y) {1}
    add_attribute( :color) {false}
  end

  factory :king, parent: :piece do
    add_attribute( :type) {"King"}
    add_attribute( :position_x) {2}
    add_attribute( :position_y) {2}
    add_attribute( :color) {true}
  end

    factory :knight, parent: :piece do
    add_attribute( :type) {"Knight"}
    add_attribute( :position_x) {2}
    add_attribute( :position_y) {3}
    add_attribute( :color) {true}
  end
end
