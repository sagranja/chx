class Knight < Piece

  def valid_move?(x, y) 
   x_delta = (position_x - x).abs
   y_delta = (position_y - y).abs
   if x_delta == 2 && y_delta == 1
    return true
   elsif y_delta == 2 && x_delta == 1
    return true
   end
   return false

  end

end