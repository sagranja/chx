class Rook < Piece

  def valid_move?(x, y)
    return false if self.is_obstructed?(x, y)
    if position_x == x && position_y != y 
      return true
    end
    if position_y == y && position_x != x 
      return true
    end
    return false
  end
end