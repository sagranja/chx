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
  end

end

class Bishop < Piece; end
class King < Piece; end
class Knight < Piece; end
class Pawn < Piece; end
class Queen < Piece; end
class Rook < Piece; end