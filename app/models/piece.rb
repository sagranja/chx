class Piece < ApplicationRecord
  belongs_to :game

  # self.inheritance_column = :type (default)

  def self.type
    %w(Bishop King Knight Pawn Queen Rook)
  end

  def color
  end
  
  def position
  end
  
  def move 
  end
  
  def captured
  end
  
  def is_obstructed?
    x1 = self.position_x
    y1 = self.position_y
    $slope = (y2 - y1).to_f / (x2 - x1).to_f
    x_range = x1..x2
    y_range = y1..y2
    x_arr = (x1..x2).to_a
    y_arr = (y1..y2).to_a

    # Determine slope - if slope is vertical
    if (y2 == y1) && (x2 == x1)
      fail "path isn't vertical, horizontal, or diagonal"
      return false
    elsif y2 == y1
      $slope = :horizontal
    elsif x2 == x1
      $slope = :vertical
    elsif ($slope.to_i == -1) || ($slope.to_i == 1)
      $slope = :diagonal
    end

    # check for obstructions
    if $slope == :horizontal
      x_range.each do |x|
        return true if game.pieces.where({position_x: x, position_y: y2}).present?
      end
    elsif $slope == :vertical
      y_range.each do |y|
        return true if game.pieces.where({position_x: x2, position_y: y}).present?
      end
    else
      x_arr.zip(y_arr).each do |x, y|
        return true if game.pieces.where({position_x: x, position_y: y}).present?
      end
    end
  end

class Bishop < Piece; end
class King < Piece; end
class Knight < Piece; end
class Pawn < Piece; end
class Queen < Piece; end
class Rook < Piece; end

end

