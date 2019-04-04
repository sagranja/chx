require 'rails_helper'

RSpec.describe King, :type => :model do
  context "moving the king" do
    it "should determine if the king is making a valid move" do 
      king = King.new({:position_x => 1, :position_y => 2})
      expect(king.position_x).to be == 1
      expect(king.valid_move?(6,6)).to be false
      expect(king.valid_move?(1,3)).to be true
    end
  end
end

RSpec.describe King, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end