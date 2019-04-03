class Pawn < Piece

  def valid_move?(x, y) 
      if position_x != x
        return false  
      end
      if position_y == 1 && y == 3 
        return true
      elsif ( y - position_y ) == 1  
        return true
      end
    return false
  end
  
end
