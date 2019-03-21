class King < Piece

  def valid_move?(x, y) 
   # self.position_x where king is currently
   # self.position_y where king is currently
  if (position_y == y)
    if (position_x - x).abs == 1
    return true
    end
  elsif (position_x == x)
    if (position_y - y).abs == 1
    return true
    end
  end
  return false




end
